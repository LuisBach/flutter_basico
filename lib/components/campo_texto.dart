import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  const CampoTexto(
      {@required TextEditingController controladorNumeroConta,
      @required String rotulo,
      @required String dica,
      IconData icone})
      : _controladorNumeroConta = controladorNumeroConta,
        _rotulo = rotulo,
        _dica = dica,
        _icone = icone;

  final TextEditingController _controladorNumeroConta;
  final String _rotulo;
  final String _dica;
  final IconData _icone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _controladorNumeroConta,
        style: TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
            icon: _icone != null ? new Icon(_icone) : null,
            labelText: _rotulo,
            hintText: _dica),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
