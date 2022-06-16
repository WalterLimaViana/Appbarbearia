import 'package:flutter/material.dart';
import 'package:flutter_floating_menu/pages/login_page.dart';
import 'package:flutter_floating_menu/pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barbearia Pirate',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: LoginPage(),
    );
  }
}
