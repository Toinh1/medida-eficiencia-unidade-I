import 'dart:io';

void main() {
  stdout.write('Número de termos: ');
  final n = int.parse(stdin.readLineSync()!);

  // A série é formada por três sequências intercaladas:
  // 1, 2, 4, 8, 16...  |  5, 10, 15, 20...  |  100, 90, 80, 70...
  int potenciaDe2 = 1;
  int multiploDe5 = 5;
  int decrescente = 100;

  for (int i = 1; i <= n; i++) {
    if (i % 3 == 1) {
      print(potenciaDe2);
      potenciaDe2 *= 2;
    } else if (i % 3 == 2) {
      print(multiploDe5);
      multiploDe5 += 5;
    } else {
      print(decrescente);
      decrescente -= 10;
    }
  }
}
