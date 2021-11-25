void main() {
  ContaCorrente contaCorrente1 = ContaCorrente();
  contaCorrente1.titular = "Felipe";
  contaCorrente1.agencia = 123;
  contaCorrente1.conta = 1;

  ContaCorrente contaCorrente2 = ContaCorrente();
  contaCorrente2.titular = "Felipe";
  contaCorrente2.agencia = 123;
  contaCorrente2.conta = 1;

  print(contaCorrente1 == contaCorrente2);
  print(contaCorrente1.titular == contaCorrente2.titular);
  print(contaCorrente1.agencia == contaCorrente2.agencia);
  print(contaCorrente1.conta == contaCorrente2.conta);
  print(contaCorrente1.hashCode == contaCorrente2.hashCode);
  contaCorrente1 = contaCorrente2;
  print(contaCorrente1.hashCode == contaCorrente2.hashCode);
}

class ContaCorrente {
  late String titular;
  late int agencia = 145;
  late int conta;
  late double saldo = 0.0;
}


 // print("Titular:${contaCorrenteThiago.titular}");
  // print("Agência:${contaCorrenteThiago.agencia}");
  // print("Conta:${contaCorrenteThiago.conta}");
  // print("Saldo:${contaCorrenteThiago.saldo}");
  // contaCorrenteThiago.saldo += 50.0;
  // print("Novo saldo:${contaCorrenteThiago.saldo}");