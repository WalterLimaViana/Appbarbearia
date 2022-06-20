import 'package:flutter/material.dart';
import 'package:flutter_floating_menu/models/event.dart';

class EventViewingPage extends StatelessWidget {
  final Event event;
  const EventViewingPage({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: CloseButton(),
    ));
  }
}
