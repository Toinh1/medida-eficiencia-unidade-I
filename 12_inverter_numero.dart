import 'dart:io';

void main() {
  stdout.write('Digite um número: ');
  final numero = stdin.readLineSync()!;

  final invertido = numero.split('').reversed.join();

  print('Número invertido: $invertido');
}
