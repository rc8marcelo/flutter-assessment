import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/di/injection.dart';
import 'cubit/calculator_cubit.dart';
import 'widgets/calculator_input.dart';

const _result = 'Result:';
const _errorMsg = 'Invalid input';

@RoutePage()
class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<CalculatorCubit>(),
      child: _body(),
    );
  }
}

extension _Widgets on CalculatorScreen {
  ///The body of the calculator screen
  Widget _body() => Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<CalculatorCubit, CalculatorState>(
          builder: (context, state) {
            return Column(
              children: [
                const CalculatorInput(),
                Text(
                  _result,
                  style: Theme.of(context).textTheme.displayMedium!,
                ),
                _resultText(context, state),
              ],
            );
          },
        ),
      );

  ///Creates the text to display depending on the [state]
  Widget _resultText(BuildContext context, CalculatorState state) =>
      state.maybeWhen(
        calculated: (result) => Text(
          result,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: Colors.green),
        ),
        error: () => Text(
          _errorMsg,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: Colors.red),
        ),
        orElse: () => Container(),
      );
}
