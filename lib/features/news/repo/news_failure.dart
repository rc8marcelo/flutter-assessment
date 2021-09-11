import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_failure.freezed.dart';

@freezed
class NewsFailure with _$NewsFailure {
  ///A failure from calling the API
  const factory NewsFailure.error(String message) = Error;

  ///Any other uncaught failures or exceptions
  const factory NewsFailure.unknown({@Default('') String message}) = Unknown;
}

extension NewsFailureFunctions on NewsFailure {
  ///Gets the message of the failure
  String get errorMessage => when(
        error: (msg) => 'Fetching data failed. $msg',
        unknown: (msg) => 'Something wrong happened. $msg',
      );
}
