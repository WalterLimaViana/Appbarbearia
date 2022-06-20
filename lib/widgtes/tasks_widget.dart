import 'package:flutter/material.dart';
import 'package:flutter_floating_menu/models/event_data_source.dart';
import 'package:flutter_floating_menu/provider/event_provider.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class TaskWidget extends StatefulWidget {
  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<EventProvider>(context);
    final selectedEvents = provider.eventsOfSelectedDate;

    if (selectedEvents.isEmpty) {
      return Center(
        child: Text(
          'Sem eventos',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      );
    }

    return SfCalendarTheme(
        data: SfCalendarThemeData(),
        child: SfCalendar(
          view: CalendarView.timelineDay,
          dataSource: EventDataSource(provider.events),
          initialDisplayDate: provider.selectedDate,
          appointmentBuilder: appointmentBuilder,
        ));
  }

  Widget appointmentBuilder(
    BuildContext context,
    CalendarAppointmentDetails details,
  ) {
    final event = details.appointments.first;

    return Container(
      width: details.bounds.width,
      height: details.bounds.height,
      decoration: BoxDecoration(
        color: event.backgroundColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          event.title,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
