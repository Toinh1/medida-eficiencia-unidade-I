import 'dart:io';

List<int> lerVetor(int indice) {
  stdout.write('Tamanho do vetor $indice: ');
  final n = int.parse(stdin.readLineSync()!);

  final vetor = <int>[];
  for (int i = 0; i < n; i++) {
    stdout.write('V$indice[${i + 1}]: ');
    vetor.add(int.parse(stdin.readLineSync()!));
  }

  return vetor;
}

void main() {
  final v1 = lerVetor(1);
  final v2 = lerVetor(2);
  final v3 = lerVetor(3);
  final v4 = lerVetor(4);

  final quintoVetor = [...v1, ...v2, ...v3, ...v4]..sort();

  final intersecao = v1
      .where((valor) =>
          v2.contains(valor) &&
          v3.contains(valor) &&
          v4.contains(valor))
      .toSet()
      .toList()
    ..sort();

  print('\nQuinto vetor ordenado: $quintoVetor');
  print('Elementos presentes nos 4 vetores: $intersecao');
}
