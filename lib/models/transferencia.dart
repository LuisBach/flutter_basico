class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);

  @override
  String toString() {
    return "Valor: $valor e conta $numeroConta";
  }

  bool validar() {
    return valor > 0 && numeroConta > 0;
  }
}
