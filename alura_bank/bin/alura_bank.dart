void main() {
  ContaCorrente contaCorrente1 = ContaCorrente();
  ContaCorrente contaCorrente2 = ContaCorrente();
  contaCorrente1.titular.nome = 'Amanda';
  contaCorrente1.titular.cpf = '123.456.789-00';
  contaCorrente1.titular.profissao = 'Programadora';

  contaCorrente2.titular.nome = 'Thiago';
  contaCorrente2.titular.cpf = '123.456.789-10';
  contaCorrente2.titular.profissao = 'Programador';

  //ou
  Cliente amanda = Cliente();
  amanda.nome = 'Amanda';
  amanda.cpf = '123.456.789-00';
  amanda.profissao = 'Programadora';

  contaCorrente1.titular = amanda;
}

class Cliente {
  late String nome;
  late String cpf;
  late String profissao;
}

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
