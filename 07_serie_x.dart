import 'dart:io';
import 'dart:math';

double fatorial(int n) {
  double resultado = 1;
  for (int i = 2; i <= n; i++) {
    resultado *= i;
  }
  return resultado;
}

void main() {
  stdout.write('Número de termos: ');
  final n = int.parse(stdin.readLineSync()!);

  double s = 0;

  // Denominadores: 1!, 2!, 3!, 4!, 3!, 2!, 1!, 2!, 3!, 4!...
  for (int i = 1; i <= n; i++) {
    final x = i;
    int ciclo = (i - 1) % 8;

    int expoente;
    if (ciclo < 4) {
      expoente = ciclo + 1;
    } else {
      expoente = 7 - ciclo;
    }

    s += pow(x, 2) / fatorial(expoente);
  }

  print('S = $s');
}
