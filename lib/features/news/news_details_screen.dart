import 'package:flutter/material.dart';
import '../../core/widgets/text_snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

import 'models/news_article.dart';
import '../../core/extensions/extensions_datetime.dart';

const _errNoContent = 'No content.';
const _btnFullArticle = 'Read the full article';
const _errCantLoad = 'Error: cannot load link.';

class NewsDetailsScreen extends StatelessWidget {
  //The article to display on this screen
  final NewsArticle article;
  const NewsDetailsScreen({
    required this.article,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _header(),
          const SizedBox(height: 16),
          _image(),
          const SizedBox(height: 16),
          _articleBody(),
          const SizedBox(height: 16),
          _articleLink(),
        ],
      ),
    );
  }
}

extension _Widgets on NewsDetailsScreen {
  ///Creates the title author and date
  Widget _header() => Builder(
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                article.title,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 8),
              Text(
                article.author ?? article.source.name,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(article.publishedAt.asFormattedDateTime,
                  style: Theme.of(context).textTheme.caption),
            ],
          );
        },
      );

  ///Displays an image if the API provided one
  Widget _image() => article.urlToImage != null
      ? Image.network(
          article.urlToImage!,
          fit: BoxFit.fitWidth,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        )
      : Container();

  ///Creates the main content of the screen
  Widget _articleBody() => Builder(
        builder: (context) {
          return Text(
            article.content ?? _errNoContent,
            style: Theme.of(context).textTheme.bodyText2,
          );
        },
      );

  ///Creates a link to open the article
  Widget _articleLink() => Builder(
        builder: (context) {
          return GestureDetector(
            child: Text(
              _btnFullArticle,
              style: Theme.of(context).textTheme.button!.copyWith(
                    color: Colors.blue[400],
                  ),
            ),
            onTap: () async {
              if (await canLaunch(article.url)) {
                await launch(article.url);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  TextSnackbar(_errCantLoad),
                );
              }
            },
          );
        },
      );
}
