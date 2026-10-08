import 'dart:io';

void main() {
  int total = 0;
  int baixo = 0;
  int normal = 0;
  int alto = 0;

  String nomeFemininoMaiorPeso = '';
  double maiorPesoFeminino = -1;

  while (true) {
    stdout.write('Nome (FIM para encerrar): ');
    final nome = stdin.readLineSync()!;

    // O enunciado não informa explicitamente o FLAG desta questão.
    // Aqui foi adotado "FIM".
    if (nome.toUpperCase() == 'FIM') break;

    stdout.write('Sexo (M/F): ');
    final sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write('Peso em kg: ');
    final peso = double.parse(stdin.readLineSync()!);

    String classificacao;

    if (peso <= 2) {
      classificacao = 'Baixo Peso';
      baixo++;
    } else if (peso <= 4) {
      classificacao = 'Normal';
      normal++;
    } else {
      classificacao = 'Alto Peso';
      alto++;
    }

    total++;
    print('Nome: $nome | Sexo: $sexo | Classificação: $classificacao');

    if (sexo == 'F' && peso > maiorPesoFeminino) {
      maiorPesoFeminino = peso;
      nomeFemininoMaiorPeso = nome;
    }
  }

  print('\n--- RESULTADOS ---');
  if (total == 0) {
    print('Nenhum recém-nascido foi cadastrado.');
    return;
  }

  print('Feminino com maior peso: ${nomeFemininoMaiorPeso.isEmpty ? "Nenhuma" : nomeFemininoMaiorPeso}');
  print('Baixo Peso: ${baixo * 100 / total}%');
  print('Normal: ${normal * 100 / total}%');
  print('Alto Peso: ${alto * 100 / total}%');
}
