part of 'news_cubit.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    required KtList<NewsArticle> articles,
    required Option<NewsFailure> failure,
    required int totalArticles,
    required int currentPage,
    required bool isLoading,
  }) = _NewsState;

  ///Initial state on screen laod.
  factory NewsState.initial() => NewsState(
        articles: emptyList(),
        isLoading: false,
        totalArticles: 0,
        failure: none(),
        currentPage: 1,
      );
}
