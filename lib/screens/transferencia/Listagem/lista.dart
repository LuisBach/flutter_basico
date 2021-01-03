import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/screens/transferencia/Listagem/components/item.dart';
import 'package:bytebank/screens/transferencia/cadastro/formulario.dart';
import 'package:flutter/material.dart';

class ListaTransferencias extends StatefulWidget {
  final List<Transferencia> _transferencias = List();

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciaState();
  }
}

class ListaTransferenciaState extends State<ListaTransferencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final Transferencia transferencia = widget._transferencias[indice];
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navegarFormulario(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _navegarFormulario(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return FormularioTransferencia();
    })).then((transferenciaRealizada) {
      if (!transferenciaRealizada.validar()) return;

      setState(() {
        widget._transferencias.add(transferenciaRealizada);
      });
      _mostrarSnackBar(context);
    });
  }

  void _mostrarSnackBar(BuildContext context) {
    final snackBar =
        SnackBar(content: Text('Transferência realizada com sucesso!'));
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
