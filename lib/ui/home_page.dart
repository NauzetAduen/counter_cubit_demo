import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import 'widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(() => context.read<CounterCubit>().increment(),
                Icons.exposure_plus_1, Theme.of(context).primaryColor),
            CustomButton(() => context.read<CounterCubit>().decrement(),
                Icons.exposure_minus_1, Theme.of(context).accentColor),
            CustomButton(() => context.read<CounterCubit>().reset(),
                Icons.exposure_zero_rounded, Theme.of(context).disabledColor),
          ],
        ),
        Text(
          context.watch<CounterCubit>().state.toString(),
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
