import 'dart:io';
import 'dart:math';

void main() {
  final aleatorio = Random();
  final numeroSorteado = aleatorio.nextInt(100) + 1;

  int limiteInferior = 1;
  int limiteSuperior = 100;

  print('Tente adivinhar um número entre 1 e 100.');

  while (true) {
    stdout.write('Digite seu palpite: ');
    final palpite = int.parse(stdin.readLineSync()!);

    if (palpite == numeroSorteado) {
      print('Parabéns! Você acertou!');
      break;
    }

    if (palpite < numeroSorteado) {
      limiteInferior = palpite + 1;
      print('O número está entre $limiteInferior e $limiteSuperior.');
    } else {
      limiteSuperior = palpite - 1;
      print('O número está entre $limiteInferior e $limiteSuperior.');
    }
  }
}
