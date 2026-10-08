import 'dart:io';

List<int> lerVetor(int tamanho, String nome) {
  final vetor = <int>[];

  for (int i = 0; i < tamanho; i++) {
    stdout.write('$nome[${i + 1}]: ');
    vetor.add(int.parse(stdin.readLineSync()!));
  }

  return vetor;
}

List<int> juntarOrdenado(List<int> a, List<int> b) {
  final resultado = <int>[];
  int i = 0;
  int j = 0;

  while (i < a.length && j < b.length) {
    if (a[i] <= b[j]) {
      resultado.add(a[i++]);
    } else {
      resultado.add(b[j++]);
    }
  }

  while (i < a.length) resultado.add(a[i++]);
  while (j < b.length) resultado.add(b[j++]);

  return resultado;
}

void main() {
  stdout.write('Tamanho do vetor 1: ');
  final n1 = int.parse(stdin.readLineSync()!);
  final v1 = lerVetor(n1, 'V1');

  stdout.write('Tamanho do vetor 2: ');
  final n2 = int.parse(stdin.readLineSync()!);
  final v2 = lerVetor(n2, 'V2');

  final resultado = juntarOrdenado(v1, v2);

  print('Terceiro vetor ordenado: $resultado');
}
