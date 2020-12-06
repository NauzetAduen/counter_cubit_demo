import 'package:counter_cubit_demo/cubit/event_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabbedAppbar extends AppBar {
  final BuildContext context;
  TabbedAppbar(this.context)
      : super(
          title: Text("Counters and Cubits"),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                child: Icon(Icons.restore_outlined),
                onTap: () => context.read<EventCubit>().reset(),
              ),
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home_outlined)),
              Tab(icon: Icon(Icons.account_box_outlined)),
            ],
          ),
        );
}
