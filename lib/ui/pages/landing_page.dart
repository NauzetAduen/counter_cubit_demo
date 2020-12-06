import 'package:flutter/material.dart';

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
