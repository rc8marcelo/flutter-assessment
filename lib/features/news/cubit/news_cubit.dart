import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../models/news_article.dart';
import '../repo/news_failure.dart';
import '../repo/repo_news.dart';

part 'news_cubit.freezed.dart';
part 'news_state.dart';

@injectable
class NewsCubit extends Cubit<NewsState> {
  ///instance of news respository
  final INewsRepo _repo;

  NewsCubit(this._repo) : super(NewsState.initial());

  ///Calls the repository to get headline articles
  Future<void> getHeadlines({int page = 1}) async {
    emit(state.copyWith(
      currentPage: page,
      isLoading: true,
    ));
    final result = await _repo.fetch(page: page);
    result.fold(
      (failure) => emit(
        state.copyWith(
          failure: some(failure),
          isLoading: false,
        ),
      ),
      (response) => emit(
        state.copyWith(
          articles: response.articles.toImmutableList(),
          totalArticles: response.totalResults,
          isLoading: false,
          failure: none(),
        ),
      ),
    );
  }
}
