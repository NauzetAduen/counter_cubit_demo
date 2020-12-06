import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';
import 'cubit/event_cubit.dart';
import 'ui/pages/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Counters and cubits',
        theme: ThemeData(
            primarySwatch: Colors.indigo,
            accentColor: Colors.redAccent,
            disabledColor: Colors.grey),
        home: MultiBlocProvider(providers: [
          BlocProvider<CounterCubit>(
            create: (context) => CounterCubit(),
          ),
          BlocProvider<EventCubit>(
            create: (context) => EventCubit(),
          ),
        ], child: LandingPage()));
  }
}
