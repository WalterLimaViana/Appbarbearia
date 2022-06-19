import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_floating_menu/models/event.dart';

class EventProvider extends ChangeNotifier {
  final List<Event> _events = [];

  List<Event> get events => _events;

  DateTime _selectedDate = DateTime.now();

  DateTime get selectedDate => _selectedDate;

  void

  void addEvent(Event event) {
    _events.add(event);

    notifyListeners();
  }
}
