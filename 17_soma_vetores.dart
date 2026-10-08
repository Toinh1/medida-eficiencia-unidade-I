import 'dart:io';

List<int> lerVetor(int tamanho, String nome) {
  final vetor = <int>[];

  for (int i = 0; i < tamanho; i++) {
    stdout.write('$nome[${i + 1}]: ');
    vetor.add(int.parse(stdin.readLineSync()!));
  }

  return vetor;
}

void main() {
  stdout.write('Tamanho dos vetores: ');
  final n = int.parse(stdin.readLineSync()!);

  final v1 = lerVetor(n, 'V1');
  final v2 = lerVetor(n, 'V2');

  final v3 = <int>[];
  int somaTotal = 0;

  for (int i = 0; i < n; i++) {
    final soma = v1[i] + v2[i];
    v3.add(soma);
    somaTotal += soma;
  }

  print('Terceiro vetor: $v3');
  print('Soma de todos os elementos do 3º vetor: $somaTotal');
}
