import 'dart:io';

void main() {
  stdout.write('Digite um número: ');
  int numero = int.parse(stdin.readLineSync()!);

  int invertido = 0;
  int valor = numero;

  while (valor > 0) {
    final digito = valor % 10;
    invertido = invertido * 10 + digito;
    valor ~/= 10;
  }

  print('Número invertido: $invertido');
}
