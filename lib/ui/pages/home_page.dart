import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/counter_cubit.dart';
import '../../cubit/event_cubit.dart';
import '../../model/event_model.dart';
import '../widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              () => increment(context),
              Icons.exposure_plus_1,
              Theme.of(context).primaryColor,
            ),
            CustomButton(
              () => decrement(context),
              Icons.exposure_minus_1,
              Theme.of(context).accentColor,
            ),
            CustomButton(
              () => reset(context),
              Icons.restore_outlined,
              Theme.of(context).disabledColor,
            ),
          ],
        ),
        Text(
          context.watch<CounterCubit>().state.toString(),
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

void increment(BuildContext context) {
  context.read<CounterCubit>().increment();
  context.read<EventCubit>().add(Event(DateTime.now(), EventType.increase));
}

void decrement(BuildContext context) {
  context.read<CounterCubit>().decrement();
  context.read<EventCubit>().add(Event(DateTime.now(), EventType.decrease));
}

void reset(BuildContext context) {
  context.read<CounterCubit>().reset();
  context.read<EventCubit>().add(Event(DateTime.now(), EventType.reset));
}
