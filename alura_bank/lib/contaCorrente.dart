import 'cliente.dart';

class ContaCorrente {
  late Cliente titular;
  late int agencia = 145;
  late int conta;
  late double saldo = 20.0;
  late double chequeEspecial = -100;

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