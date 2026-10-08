import 'dart:io';

void main() {
  int total = 0;
  int homens = 0;
  int mulheres = 0;

  int menorPontuacaoGeralMasculino = 5001;
  String nomeMenorMasculino = '';

  int maiorPontuacaoSI = -1;
  String codigoMaiorSI = '';

  while (true) {
    stdout.write('Código (0000 para encerrar): ');
    final codigo = stdin.readLineSync()!;

    if (codigo == '0000') break;

    stdout.write('Curso (CC/SI): ');
    final curso = stdin.readLineSync()!.toUpperCase();

    stdout.write('Nome: ');
    final nome = stdin.readLineSync()!;

    stdout.write('Sexo (M/F): ');
    final sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write('Pontuação (0-5000): ');
    final pontuacao = int.parse(stdin.readLineSync()!);

    total++;

    if (sexo == 'M') {
      homens++;
      if (pontuacao < menorPontuacaoGeralMasculino) {
        menorPontuacaoGeralMasculino = pontuacao;
        nomeMenorMasculino = nome;
      }
    } else if (sexo == 'F') {
      mulheres++;
    }

    if (curso == 'CC' && pontuacao > 2500) {
      print('CC acima de 2500 -> Código: $codigo | Nome: $nome | Pontuação: $pontuacao');
    }

    if (curso == 'SI' && sexo == 'M' && pontuacao > maiorPontuacaoSI) {
      maiorPontuacaoSI = pontuacao;
      codigoMaiorSI = codigo;
    }
  }

  print('\n--- RESULTADOS ---');
  print('Menor pontuação masculina: ${nomeMenorMasculino.isEmpty ? "Nenhuma" : nomeMenorMasculino}');

  print('Código do homem com maior pontuação em SI: '
      '${codigoMaiorSI.isEmpty ? "Nenhum" : codigoMaiorSI}');

  if (total > 0) {
    print('Percentual masculino: ${homens * 100 / total}%');
    print('Percentual feminino: ${mulheres * 100 / total}%');
  }
}
