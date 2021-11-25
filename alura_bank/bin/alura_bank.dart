void main() {
  ContaCorrente contaCorrenteAmanda = ContaCorrente();
  contaCorrenteAmanda.titular = "Amanda";
  contaCorrenteAmanda.agencia = 123;
  contaCorrenteAmanda.conta = 1;

  print("Titular:${contaCorrenteAmanda.titular}");
  print("Agência:${contaCorrenteAmanda.agencia}");
  print("Conta:${contaCorrenteAmanda.conta}");
  print("Saldo:${contaCorrenteAmanda.saldo}");
  contaCorrenteAmanda.saldo += 50.0;
  print("Novo saldo:${contaCorrenteAmanda.saldo}");

  ContaCorrente contaCorrenteThiago = ContaCorrente();
  contaCorrenteThiago.titular = "Thiago";
  contaCorrenteThiago.conta = 2;

  print("Titular:${contaCorrenteThiago.titular}");
  print("Agência:${contaCorrenteThiago.agencia}");
  print("Conta:${contaCorrenteThiago.conta}");
  print("Saldo:${contaCorrenteThiago.saldo}");
  contaCorrenteThiago.saldo += 50.0;
  print("Novo saldo:${contaCorrenteThiago.saldo}");
}

class ContaCorrente {
  late String titular;
  late int agencia = 145;
  late int conta;
  late double saldo = 0.0;
}
