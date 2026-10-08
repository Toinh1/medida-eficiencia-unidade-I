import 'dart:io';

void main() {
  double somaTurma = 0;
  double somaFeminino = 0;
  int totalAlunos = 0;
  int aprovados = 0;
  int qtdFeminino = 0;

  double maiorMediaM = -1;
  double maiorMediaF = -1;
  String matriculaMaiorM = '';
  String matriculaMaiorF = '';

  while (true) {
    stdout.write('Matrícula (00000 para encerrar): ');
    final matricula = stdin.readLineSync()!;

    if (matricula == '00000') break;

    stdout.write('Nome: ');
    final nome = stdin.readLineSync()!;

    stdout.write('Sexo (M/F): ');
    final sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write('Nota 1: ');
    final n1 = double.parse(stdin.readLineSync()!);
    stdout.write('Nota 2: ');
    final n2 = double.parse(stdin.readLineSync()!);
    stdout.write('Nota 3: ');
    final n3 = double.parse(stdin.readLineSync()!);

    stdout.write('Faltas: ');
    final faltas = int.parse(stdin.readLineSync()!);

    final media = (n1 + n2 + n3) / 3;
    final aprovado = media >= 7 && faltas <= 18;

    totalAlunos++;
    somaTurma += media;

    if (aprovado) aprovados++;

    if (sexo == 'F') {
      qtdFeminino++;
      somaFeminino += media;

      if (aprovado && media > maiorMediaF) {
        maiorMediaF = media;
        matriculaMaiorF = matricula;
      }
    } else if (sexo == 'M') {
      if (aprovado && media > maiorMediaM) {
        maiorMediaM = media;
        matriculaMaiorM = matricula;
      }
    }
  }

  if (totalAlunos == 0) {
    print('Nenhum aluno foi cadastrado.');
    return;
  }

  print('\n--- RESULTADOS ---');
  print('Média da turma: ${somaTurma / totalAlunos}');
  print('Percentual de aprovados: ${aprovados * 100 / totalAlunos}%');
  print('Matrícula do maior aprovado masculino: ${matriculaMaiorM.isEmpty ? "Nenhum" : matriculaMaiorM}');
  print('Matrícula do maior aprovado feminino: ${matriculaMaiorF.isEmpty ? "Nenhuma" : matriculaMaiorF}');
  print('Média dos alunos do sexo feminino: ${qtdFeminino == 0 ? 0 : somaFeminino / qtdFeminino}');
}
