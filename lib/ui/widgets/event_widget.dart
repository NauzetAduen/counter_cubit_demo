import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../model/event_model.dart';

class EventWidget extends StatelessWidget {
  final Event event;

  const EventWidget(this.event);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: Text(
              event.date.getFormatedTime(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, letterSpacing: 4),
            )),
            Expanded(child: event.eventType.getIcon()),
          ],
        ),
      ),
    );
  }
}

extension FormatedDate on DateTime {
  String getFormatedTime() => DateFormat('HH:mm:ss').format(this);
}

extension IconFromType on EventType {
  Icon getIcon() {
    double size = 35;
    switch (index) {
      case 0:
        return Icon(
          Icons.exposure_plus_1,
          color: Colors.green,
          size: size,
        );
      case 1:
        return Icon(
          Icons.exposure_minus_1,
          color: Colors.red,
          size: size,
        );
      default:
        return Icon(
          Icons.restore_outlined,
          color: Colors.grey,
          size: size,
        );
    }
  }
}
