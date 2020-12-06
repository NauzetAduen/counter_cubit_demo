import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/event_cubit.dart';

class TabbedAppbar extends AppBar {
  final BuildContext context;
  TabbedAppbar(this.context)
      : super(
          title: const Text("Counters and Cubits"),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () => context.read<EventCubit>().reset(),
                child: const Icon(Icons.restore_outlined),
              ),
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home_outlined)),
              Tab(icon: Icon(Icons.account_box_outlined)),
            ],
          ),
        );
}
