import 'package:flutter/material.dart';

class TabbedAppbar extends AppBar {
  TabbedAppbar()
      : super(
          title: Text("Counters and Cubits"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home_outlined)),
              Tab(icon: Icon(Icons.account_box_outlined)),
            ],
          ),
        );
}
