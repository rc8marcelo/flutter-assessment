import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/di/injection.dart';
import 'cubit/calculator_cubit.dart';
import 'widgets/calculator_input.dart';

//! https://gist.github.com/kendfinger/962ce4c770ae6ae78fcb

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<CalculatorCubit>(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<CalculatorCubit, CalculatorState>(
          builder: (context, state) {
            return Column(
              children: [
                CalculatorInput(),
                Text(
                  'Result:',
                  style: Theme.of(context).textTheme.headline2!,
                ),
                state.maybeWhen(
                  calculated: (result) => Text(
                    result,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: Colors.green),
                  ),
                  error: () => Text(
                    'Invalid input',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: Colors.red),
                  ),
                  orElse: () => Container(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
