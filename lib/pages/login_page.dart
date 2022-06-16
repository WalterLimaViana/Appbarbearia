import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final form_key = GlobalKey<FormState>();
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
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Form(
                      key: form_key,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Text(
                          //   'Nome',
                          //   style: TextStyle(
                          //     fontSize: 35,
                          //     fontWeight: FontWeight.bold,
                          //     letterSpacing: -1.5,
                          //   ),
                          // ),
                          Padding(
                            padding: EdgeInsets.all(24),
                            child: TextFormField(
                              // controller: email,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Email'),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Informe o email corretamente';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 24.0,
                            ),
                            child: TextFormField(
                              // controller: senha,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Senha',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Informe sua senha';
                                } else if (value.length < 6) {
                                  return 'Sua senha deve ter no mínimo 6 caracteres';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(24),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  // children: (){}
                                  // ? [
                                  //     Padding(
                                  //       padding: EdgeInsets.all(16),
                                  //       child: SizedBox(
                                  //           width: 24,
                                  //           height: 24,
                                  //           child: CircularProgressIndicator(
                                  //             color: Colors.white,
                                  //           )),
                                  //     )
                                  //   ]
                                  // : [
                                  //     Icon(Icons.check),
                                  //     Padding(
                                  //       padding: EdgeInsets.all(16),
                                  //       child: Text(
                                  //        ' actionButton',
                                  //         style: TextStyle(
                                  //           fontSize: 20,
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   ],
                                  ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("toggleButton"),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
