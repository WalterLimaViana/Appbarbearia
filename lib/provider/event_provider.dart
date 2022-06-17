import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_floating_menu/models/event.dart';

class EventProvider extends ChangeNotifier {
  final List<Event> _events = [];

  List<Event> get events => _events;

  void addEvent(Event event) {
    _events.add(event);

    notifyListeners();
  }
}
