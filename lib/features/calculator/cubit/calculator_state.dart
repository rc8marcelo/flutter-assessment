part of 'calculator_cubit.dart';

@freezed
class CalculatorState with _$CalculatorState {
  ///Initial sate
  const factory CalculatorState.initial() = _Initial;

  ///state when something was successfully calculated and has a [result]
  const factory CalculatorState.calculated(String result) = _Calculated;

  ///State when calculator has error
  const factory CalculatorState.error() = _Error;
}
