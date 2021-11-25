void main() {
  ContaCorrente contaCorrente = ContaCorrente();
  contaCorrente.titular = "Thamyris";
  contaCorrente.agencia=123;
  contaCorrente.conta=145;
  contaCorrente.saldo=150.0;

  print("Titular:${contaCorrente.titular}");
  print("Agência:${contaCorrente.agencia}");
  print("Conta:${contaCorrente.conta}");
  print("Saldo:${contaCorrente.saldo}");
  contaCorrente.saldo+=50.0;
  print("Novo saldo:${contaCorrente.saldo}");
}

class ContaCorrente {
  late String titular;
  late int agencia;
  late int conta;
  late double saldo;
}
