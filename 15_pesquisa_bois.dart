import 'dart:io';

void main() {
  stdout.write('Quantidade de bois: ');
  final n = int.parse(stdin.readLineSync()!);

  final numeros = <int>[];
  final pesos = <double>[];

  for (int i = 0; i < n; i++) {
    stdout.write('Número do boi: ');
    numeros.add(int.parse(stdin.readLineSync()!));

    stdout.write('Peso do boi em kg: ');
    pesos.add(double.parse(stdin.readLineSync()!));
  }

  while (true) {
    stdout.write('\nPeso mínimo (digite -1 para sair): ');
    final minimo = double.parse(stdin.readLineSync()!);

    if (minimo == -1) break;

    stdout.write('Peso máximo: ');
    final maximo = double.parse(stdin.readLineSync()!);

    print('Bois no intervalo $minimo a $maximo kg:');

    bool encontrou = false;

    for (int i = 0; i < n; i++) {
      if (pesos[i] >= minimo && pesos[i] <= maximo) {
        print('Boi ${numeros[i]} - ${pesos[i]} kg');
        encontrou = true;
      }
    }

    if (!encontrou) print('Nenhum boi encontrado.');
  }
}
