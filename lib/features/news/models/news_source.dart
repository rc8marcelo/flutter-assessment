import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_source.freezed.dart';
part 'news_source.g.dart';

@freezed
class NewsSource with _$NewsSource {
  const NewsSource._();
  const factory NewsSource({
    required String name,
  }) = _NewsSource;

  ///Creates a [NewsSource] model from [json]
  factory NewsSource.fromJson(Map<String, dynamic> json) =>
      _$NewsSourceFromJson(json);
}
