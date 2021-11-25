void main() {
  ContaCorrente contaCorrente1 = ContaCorrente();
  ContaCorrente contaCorrente2 = ContaCorrente();
  contaCorrente1.titular = 'Amanda';
  contaCorrente1.titular = 'Thiago';

//   contaCorrente1.deposito(20);
//   contaCorrente2.deposito(50);
//   print('Saldo da ${contaCorrente1.titular}:${contaCorrente1.saldo} ');
//   print('Saldo da ${contaCorrente2.titular}:${contaCorrente2.saldo} ');
//   contaCorrente1.saque(80.0);
//   contaCorrente2.saque(130.0);
//   print('Saldo da ${contaCorrente1.titular}:${contaCorrente1.saldo} ');
//   print('Saldo da ${contaCorrente2.titular}:${contaCorrente2.saldo} ');

  bool sucesso = contaCorrente1.saque(20);
  double saldo = contaCorrente1.deposito(50);
  print(sucesso);
  print(saldo);
  bool sucesso2 = contaCorrente1.saque(200);
  print(sucesso2);
}

class ContaCorrente {
  late String titular;
  late int agencia = 145;
  late int conta;
  late double saldo = 20.0;

  bool saque(double valorDoSaque) {
    if (saldo - valorDoSaque < -100) {
      print('Sem saldo Suficiente');
      return false;
    } else {
      print('Sacando $valorDoSaque reais');
      saldo -= valorDoSaque;
      return true;
    }
  }

  double deposito(double valorDoDeposito) {
    saldo += valorDoDeposito;
    return saldo;
  }
}
