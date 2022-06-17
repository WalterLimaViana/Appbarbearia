import 'package:flutter/material.dart';
import 'package:flutter_floating_menu/pages/add_event.dart';
import 'package:flutter_floating_menu/pages/login_page.dart';
import 'package:flutter_floating_menu/pages/home_page.dart';
import 'package:flutter_floating_menu/provider/event_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => EventProvider(),
        child: MaterialApp(
          title: 'Darbe\'s Barber Shop',
          theme: ThemeData(
            brightness: Brightness.dark,
          ),
          home: HomePage(),
        ),
      );
}
