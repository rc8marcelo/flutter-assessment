import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:math_expressions/math_expressions.dart';

part 'calculator_cubit.freezed.dart';
part 'calculator_state.dart';

//captures a pair of numbers with an operator
final RegExp _operation = RegExp(
    r"(\d+\.\d+|\d+)(?:\s*)(\+|\-|\*|\/|\%|\^|\(|(\)\()*)(?:\s*)(\d+\.\d+|\d+)");
//captures expressions within a parenthesis
final RegExp _enclosingParenthesis = RegExp(r"\((.*)\)");

@injectable
class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(const CalculatorState.initial());

  String _calculate(String input) {
    if (!_operation.hasMatch(input)) {
      emit(const CalculatorState.error());
    }

    var expr = input;

    expr = expr.replaceAllMapped(_enclosingParenthesis, (match) {
      return (match.group(0)! == '(${match.group(1)!})') &&
              !_operation.hasMatch(match.group(1)!)
          ? '*(${match.group(1)!})'
          : '*(${_calculate(match.group(1)!).replaceAll(')(', ')*(')})';
    });

    try {
      Parser p = Parser();
      Expression exp = p.parse(expr);
      expr = exp.evaluate(EvaluationType.REAL, ContextModel()).toString();
    } on Exception catch (_) {
      emit(const CalculatorState.error());
    } on Error catch (_) {
      emit(const CalculatorState.error());
    }
    return expr;
  }

  ///Given the [input] string from a TextField, simplify the expression
  void calculateExpression(String input) {
    emit(const CalculatorState.initial());

    final result = _calculate(input);
    final validatedResult = num.tryParse(result);
    emit(
      validatedResult != null
          ? CalculatorState.calculated(result)
          : const CalculatorState.error(),
    );
  }
}
