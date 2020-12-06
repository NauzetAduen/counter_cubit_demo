import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import 'events_page.dart';
import 'home_page.dart';
import 'widgets/tabbed_appbar.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: BlocProvider<CounterCubit>(
        create: (newContext) => CounterCubit(),
        child: Scaffold(
          appBar: TabbedAppbar(),
          body: TabBarView(
            children: [
              HomePage(),
              EventPage(),
            ],
          ),
        ),
      ),
    );
  }
}
