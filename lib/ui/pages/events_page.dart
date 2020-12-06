import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/event_cubit.dart';
import '../../model/event_model.dart';
import '../widgets/event_widget.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Event> eventList = context.watch<EventCubit>().state;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: eventList.length,
        itemBuilder: (_, index) {
          return EventWidget(eventList[index]);
        },
      ),
    );
  }
}
