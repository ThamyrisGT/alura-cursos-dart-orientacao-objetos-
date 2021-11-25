import 'cliente.dart';

class ContaCorrente {
  late Cliente titular;
  int agencia = 145;
  late int conta;
  double _saldo = 20.0;
  double chequeEspecial = -100;

   double get saldo => _saldo;
   set saldo( double novoValor) =>{_saldo = novoValor};

  // double get saldo {
  //   return _saldo;
  // }

  // set saldo (double novoSaldo) {
  //   if (novoSaldo >= chequeEspecial) {
  //     _saldo = novoSaldo;
  //   } else {
  //     print('Erro, saldo mesmo com cheque especial, insuficiente');
  //   }
  // }

  bool saque(double valorDoSaque) {
    if (!verificaSaldo(valorDoSaque)) {
      return false;
    } else {
      saldo -= valorDoSaque;
      return true;
    }
  }

  double deposito(double valorDoDeposito) {
    saldo += valorDoDeposito;
    return saldo;
  }

  bool transferencia(
      double valorDeTranferencia, ContaCorrente contaCorrenteDestino) {
    if (!verificaSaldo(valorDeTranferencia)) {
      return false;
    } else {
      saldo -= valorDeTranferencia;
      contaCorrenteDestino.saldo += valorDeTranferencia;
      return true;
    }
  }

  bool verificaSaldo(double valor) {
    if (saldo - valor < chequeEspecial) {
      print('Sem saldo suficiente');
      return false;
    } else {
      print('Movimentando $valor reais');
      return true;
    }
  }
}
