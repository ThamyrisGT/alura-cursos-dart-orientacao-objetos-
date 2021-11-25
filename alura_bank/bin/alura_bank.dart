import 'package:alura_bank/cliente.dart';
import 'package:alura_bank/contaCorrente.dart';

void main() {
  ContaCorrente contaCorrente1 = ContaCorrente();
  ContaCorrente contaCorrente2 = ContaCorrente();
  contaCorrente1.titular.nome = 'Amanda';
  contaCorrente1.titular.cpf = '123.456.789-00';
  contaCorrente1.titular.profissao = 'Programadora';

  //ou
  Cliente amanda = Cliente();
  amanda.nome = 'Amanda';
  amanda.cpf = '123.456.789-00';
  amanda.profissao = 'Programadora';
  contaCorrente1.titular = amanda;

  // ou "cascata"

  Cliente thiago = Cliente()
    ..nome = 'Thiago'
    ..cpf = '123.456.789-10'
    ..profissao = 'Programador';

    contaCorrente2.titular = thiago;
}
