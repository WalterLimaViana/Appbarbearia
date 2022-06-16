import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        width: 220,
                        height: 220,
                        child: Opacity(
                            opacity: 0.6,
                            child: Image.asset('img/logoBarber.png')),
                      ),
                    ),
                  ),
                  Text(
                    'Bem vindo a Darbe\'s Barber Shop',
                    style: TextStyle(),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
