import 'package:bloc/bloc.dart';

import '../model/event_model.dart';

class EventCubit extends Cubit<List<Event>> {
  EventCubit() : super([]);

  void add(Event event) => emit([...state, event]);

  void reset() => emit([]);
}
