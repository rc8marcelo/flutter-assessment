part of 'calculator_cubit.dart';

@freezed
class CalculatorState with _$CalculatorState {
  const factory CalculatorState.initial() = _Initial;
  const factory CalculatorState.calculated(String result) = _Calculated;
  const factory CalculatorState.error() = _Error;
}
