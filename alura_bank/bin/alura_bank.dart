void main() {
  ContaCorrente contaCorrente = ContaCorrente();
  String nome = "Gabriel";
  nome = contaCorrente.titular;
}

class ContaCorrente {
  late String titular;
  late int agencia;
  late int conta;
  late double saldo;
}
