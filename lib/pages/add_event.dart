import 'package:flutter/material.dart';
import 'package:flutter_floating_menu/models/event.dart';

class AddEvent extends StatefulWidget {
  final Event? event;

  const AddEvent({
    Key? key,
    this.event,
  }) : super(key: key);

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  late DateTime fromDate;
  late DateTime toDate;

  @override
  void initState() {
    super.initState();

    if (widget.event == null) {
      fromDate = DateTime.now();
      toDate = DateTime.now().add(Duration(
        minutes: 40,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(),
        actions: buildEditingActions(),
      ),
    );
  }

  List<Widget> buildEditingActions() => [
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.done),
          label: Text('Salvar'),
        )
      ];
}
