import 'package:flutter/material.dart';
import 'package:flutter_assessment/features/calculator/cubit/calculator_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _msgCalculate = 'Calculate';

class CalculatorInput extends StatefulWidget {
  const CalculatorInput({Key? key}) : super(key: key);

  @override
  _CalculatorInputState createState() => _CalculatorInputState();
}

class _CalculatorInputState extends State<CalculatorInput> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(controller: _controller),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: () {
            context
                .read<CalculatorCubit>()
                .calculateExpression(_controller.text);
          },
          child: const Text(_msgCalculate),
        ),
      ],
    );
  }
}
