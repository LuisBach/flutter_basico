import 'package:bytebank/components/campo_texto.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatefulWidget {
  final TextEditingController _controladorNumeroConta = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  State<StatefulWidget> createState() => FormularioTransferenciaState();
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferências'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CampoTexto(
                controladorNumeroConta: widget._controladorNumeroConta,
                dica: '1314',
                rotulo: 'Número da conta'),
            CampoTexto(
              controladorNumeroConta: widget._controladorValor,
              dica: '100.0',
              rotulo: 'Valor',
              icone: Icons.monetization_on,
            ),
            RaisedButton(
              child: Text('Confirmar'),
              onPressed: () => _criarTransferencia(context),
            )
          ],
        ),
      ),
    );
  }

  void _criarTransferencia(BuildContext context) {
    final Transferencia transferencia = Transferencia(
        double.tryParse(widget._controladorValor.text),
        int.tryParse(widget._controladorNumeroConta.text));
    Navigator.pop(context, transferencia);
  }
}
