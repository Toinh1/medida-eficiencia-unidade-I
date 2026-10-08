import 'dart:io';

void main() {
  stdout.write('Quantidade de números: ');
  final n = int.parse(stdin.readLineSync()!);

  final vetor = <int>[];

  for (int i = 0; i < n; i++) {
    stdout.write('Elemento ${i + 1}: ');
    vetor.add(int.parse(stdin.readLineSync()!));
  }

  final contagens = <int, int>{};

  for (final valor in vetor) {
    contagens[valor] = (contagens[valor] ?? 0) + 1;
  }

  print('\n--- RESULTADO ---');
  for (final entrada in contagens.entries) {
    print('${entrada.key} - ${entrada.value}');
  }
}
