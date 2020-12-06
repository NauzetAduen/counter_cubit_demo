class Event {
  final DateTime date;
  final EventType eventType;

  Event(this.date, this.eventType);
}

enum EventType { Increase, Decrease, Reset }
