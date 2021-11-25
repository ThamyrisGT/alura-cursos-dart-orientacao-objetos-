void main() {
  ContaCorrente contaCorrente1 = ContaCorrente();
  ContaCorrente contaCorrente2 = ContaCorrente();

  // double saqueDaAmanda = 30.0;
  // double saqueDoThiago = 90.0;
  contaCorrente1.titular = 'Amanda';
  contaCorrente1.titular = 'Thiago';

  print('Saldo da ${contaCorrente1.titular}:${contaCorrente1.saldo} ');
  print('Saldo da ${contaCorrente2.titular}:${contaCorrente2.saldo} ');
  contaCorrente1.saque(80.0);
  contaCorrente2.saque(130.0);
  print('Saldo da ${contaCorrente1.titular}:${contaCorrente1.saldo} ');
  print('Saldo da ${contaCorrente2.titular}:${contaCorrente2.saldo} ');

  // print('Saldo da ${contaCorrente1.titular}:${contaCorrente1.saldo} ');
  // if (contaCorrente1.saldo - saqueDaAmanda < -100) {
  //   print('Sem saldo Suficiente');
  // } else {
  //   print('Sacando $saqueDaAmanda reais');
  //   contaCorrente1.saldo -= saqueDaAmanda;
  // }

  // print('Saldo da ${contaCorrente2.titular}:${contaCorrente2.saldo} ');
  // if (contaCorrente2.saldo - saqueDoThiago < -100) {
  //   print('Sem saldo Suficiente');
  // } else {
  //   print('Sacando $saqueDoThiago reais');
  //   contaCorrente2.saldo -= saqueDoThiago;
  // }
}

class ContaCorrente {
  late String titular;
  late int agencia = 145;
  late int conta;
  late double saldo = 20.0;

  void saque(double valorDoSaque) {
    if (saldo - valorDoSaque < -100) {
      print('Sem saldo Suficiente');
    } else {
      print('Sacando $valorDoSaque reais');
      saldo -= valorDoSaque;
    }
  }
}
