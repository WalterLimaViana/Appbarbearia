import 'package:flutter/material.dart';
import 'package:appBarbearia/models/event.dart';

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
