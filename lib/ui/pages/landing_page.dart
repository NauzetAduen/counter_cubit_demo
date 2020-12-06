import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/counter_cubit.dart';
import '../../cubit/event_cubit.dart';
import '../widgets/tabbed_appbar.dart';
import 'events_page.dart';
import 'home_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabbedAppbar(context),
          body: TabBarView(
            children: [
              HomePage(),
              EventPage(),
            ],
          ),
        ));
  }
}
