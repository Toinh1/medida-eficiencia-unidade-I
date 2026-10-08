import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Número de termos: ');
  final n = int.parse(stdin.readLineSync()!);

  double s = 0;

  for (int i = 1; i <= n; i++) {
    final base = 2 * i + 1;
    final expoente = 4 * i;
    final denominador = 5 * i;

    // A série do enunciado: 3^4/5 + 5^8/10 + 7^12/15 - 9^16/20 + ...
    final termo = pow(base, expoente) / denominador;

    if (i <= 3) {
      s += termo;
    } else {
      s += (i % 2 == 0 ? -1 : 1) * termo;
    }
  }

  print('S = $s');
}
