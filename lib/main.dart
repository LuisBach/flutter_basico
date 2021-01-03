import 'package:bytebank/screens/transferencia/Listagem/lista.dart';
import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.lightBlue[400],
          accentColor: Colors.lightBlue[100],
          buttonTheme: ButtonThemeData(
              buttonColor: Colors.lightBlue[100],
              textTheme: ButtonTextTheme.normal)),
      home: ListaTransferencias(),
    );
  }
}
