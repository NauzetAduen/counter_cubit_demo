import 'package:counter_cubit_demo/model/event_model.dart';
import 'package:counter_cubit_demo/ui/widgets/event_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/event_cubit.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Event> eventList = context.watch<EventCubit>().state;
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
