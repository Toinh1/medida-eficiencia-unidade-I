import 'dart:io';

void main() {
  int homens = 0;
  int mulheres = 0;
  int homensMais45 = 0;
  int somaIdadeHomensExperientes = 0;
  int qtdHomensExperientes = 0;
  int mulheresMenos30Experientes = 0;

  String nomeMulherExperienteMaisNova = '';
  int menorIdadeMulherExperiente = 999;

  while (true) {
    stdout.write('Nome (FIM para encerrar): ');
    final nome = stdin.readLineSync()!;

    if (nome.toUpperCase() == 'FIM') break;

    stdout.write('Sexo (M/F): ');
    final sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write('Idade: ');
    final idade = int.parse(stdin.readLineSync()!);

    stdout.write('Tem experiência? (S/N): ');
    final experiencia = stdin.readLineSync()!.toUpperCase();

    if (sexo == 'M') {
      homens++;

      if (idade > 45) homensMais45++;

      if (experiencia == 'S') {
        somaIdadeHomensExperientes += idade;
        qtdHomensExperientes++;
      }
    } else if (sexo == 'F') {
      mulheres++;

      if (idade < 30 && experiencia == 'S') {
        mulheresMenos30Experientes++;
      }

      if (experiencia == 'S' && idade < menorIdadeMulherExperiente) {
        menorIdadeMulherExperiente = idade;
        nomeMulherExperienteMaisNova = nome;
      }
    }
  }

  print('\n--- RESULTADOS ---');
  print('Número de homens: $homens');
  print('Número de mulheres: $mulheres');

  print('Idade média dos homens experientes: '
      '${qtdHomensExperientes == 0 ? 0 : somaIdadeHomensExperientes / qtdHomensExperientes}');

  print('Percentual de homens com mais de 45 anos: '
      '${homens == 0 ? 0 : homensMais45 * 100 / homens}%');

  print('Mulheres com menos de 30 anos e experiência: $mulheresMenos30Experientes');
  print('Candidata experiente mais nova: '
      '${nomeMulherExperienteMaisNova.isEmpty ? "Nenhuma" : nomeMulherExperienteMaisNova}');
}
