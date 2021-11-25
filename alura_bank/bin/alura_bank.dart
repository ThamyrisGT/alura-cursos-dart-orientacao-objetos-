import 'package:alura_bank/cliente.dart';
import 'package:alura_bank/contaCorrente.dart';

void main() {
  ContaCorrente contaCorrente1 = ContaCorrente();
  ContaCorrente contaCorrente2 = ContaCorrente();

  contaCorrente1.saldo = -101;
  print(contaCorrente1.saldo);
}
