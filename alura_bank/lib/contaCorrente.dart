import 'cliente.dart';

class ContaCorrente {
  ContaCorrente(int agencia, this.conta) {
    if (agencia > 0) {
      _agencia = agencia;
      totalDeContasCorrentes++;
    }
  }

  late Cliente titular;
  int _agencia = 145;
  late int conta;
  double _saldo = 20.0;
  double chequeEspecial = -100;
  static int totalDeContasCorrentes = 0; // variável estática da própria classe, pertence somente a classe Conta Corrente não ao objeto

  double get saldo => _saldo;
  set saldo(double novoValor) => {_saldo = novoValor};

  int get agencia => _agencia;
  set agencia(int novaAgencia) => {if (novaAgencia > 0) _agencia = novaAgencia};

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
