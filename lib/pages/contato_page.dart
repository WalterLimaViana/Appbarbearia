import 'package:flutter/material.dart';

class ContatoPage extends StatefulWidget {
  ContatoPage({Key? key}) : super(key: key);

  @override
  State<ContatoPage> createState() => _ContatoPageState();
}

class _ContatoPageState extends State<ContatoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
      ),
    );
  }
}
