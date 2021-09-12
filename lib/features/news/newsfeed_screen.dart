import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

import '../../core/di/injection.dart';
import '../../core/routing/router.gr.dart';
import '../../core/widgets/text_snackbar.dart';
import 'cubit/news_cubit.dart';
import 'models/news_article.dart';
import 'repo/news_failure.dart';

const _errorMsg = 'Fetching failed.';
const _retryMsg = 'Retry';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<NewsCubit>()..getHeadlines(),
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: _listenForStateChanges,
        listenWhen: _checkWhenToListen,
        buildWhen: _checkWhenToBuild,
        builder: _buildBody,
      ),
    );
  }
}

extension _Functions on NewsFeedScreen {
  ///Listens for changes in [state] and act accordingly
  void _listenForStateChanges(BuildContext context, NewsState state) {
    if (state.failure.isSome()) {
      final failure =
          state.failure.getOrElse(() => const NewsFailure.unknown());
      ScaffoldMessenger.of(context).showSnackBar(
        TextSnackbar(failure.errorMessage),
      );
    }
  }

  ///Determines whether to execute the listener callback function
  bool _checkWhenToListen(NewsState oldState, NewsState newState) =>
      oldState.failure != newState.failure;

  ///Determines whether to execute the builder callback function
  bool _checkWhenToBuild(NewsState oldState, NewsState newState) =>
      oldState.failure != newState.failure ||
      oldState.articles != newState.articles ||
      oldState.isLoading != newState.isLoading;

  ///Returns true if the [currentPage] is less than the number of max pages.
  ///
  ///Max pages are calculated as [totalArticles]/20 rounded up
  bool _hasMorePages({
    required int totalArticles,
    required int currentPage,
  }) {
    final maxPages = (totalArticles / 20).ceil();
    return maxPages > currentPage;
  }
}

extension _Widgets on NewsFeedScreen {
  ///Builds the body of the screen
  Widget _buildBody(BuildContext context, NewsState state) {
    if (state.isLoading) {
      return _loader();
    } else if (state.articles.isNotEmpty()) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: _articlesList(
          state.articles,
          state.totalArticles,
          state.currentPage,
        ),
      );
    } else {
      return _errorBody(context);
    }
  }

  ///Builds the list of [articles]
  Widget _articlesList(
    KtList<NewsArticle> articles,
    int totalArticles,
    int currentPage,
  ) =>
      CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            while (index < articles.count()) {
              final article = articles.get(index);
              return _articleCard(context, article);
            }
          })),
          SliverFillRemaining(
            child: _navigationButtons(currentPage, totalArticles),
            hasScrollBody: false,
          )
        ],
      );

  ///Creates a widget that allows the user to retry fetching if error state occurs
  Widget _errorBody(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _errorMsg,
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.read<NewsCubit>().getHeadlines();
              },
              child: const Text(_retryMsg),
            ),
          ],
        ),
      );

  ///Loading widget
  Widget _loader() => const Center(
        child: CircularProgressIndicator(),
      );

  ///Creates the body that houses the new [article]
  Widget _articleCard(BuildContext context, NewsArticle article) => Card(
        child: ListTile(
          minVerticalPadding: 8,
          trailing: const Icon(Icons.chevron_right),
          title: Text(
            article.title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            article.source.name,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          onTap: () {
            context.pushRoute(NewsDetailsRoute(article: article));
          },
        ),
      );

  ///Creates the navigation buttons below the articles list.
  ///
  ///Determines what button to show depending on the [currentPage] and the [totalArticles]
  Widget _navigationButtons(int currentPage, int totalArticles) {
    return Builder(builder: (context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: currentPage > 1,
            child: TextButton(
              onPressed: () async {
                context.read<NewsCubit>().getHeadlines(page: currentPage - 1);
              },
              child: _linkText(context, text: 'Back'),
            ),
          ),
          Visibility(
            visible: _hasMorePages(
              totalArticles: totalArticles,
              currentPage: currentPage,
            ),
            child: TextButton(
              onPressed: () async {
                context.read<NewsCubit>().getHeadlines(page: currentPage + 1);
              },
              child: _linkText(context, text: 'More'),
            ),
          ),
        ],
      );
    });
  }

  ///Creates a text that looks like a link
  Widget _linkText(BuildContext context, {required String text}) => Text(
        text,
        style: Theme.of(context)
            .textTheme
            .button!
            .copyWith(color: Colors.blue[400]),
      );
}
