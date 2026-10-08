import 'dart:io';

void main() {
  const valorHora = 12.30;

  double somaLiquidoM = 0;
  double somaLiquidoF = 0;
  int qtdM = 0;
  int qtdF = 0;

  while (true) {
    stdout.write('Código (9999 para encerrar): ');
    final codigo = stdin.readLineSync()!;

    if (codigo == '9999') break;

    stdout.write('Nome: ');
    final nome = stdin.readLineSync()!;

    stdout.write('Sexo (M/F): ');
    final sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write('Horas de aula no mês: ');
    final horas = double.parse(stdin.readLineSync()!);

    final salarioBruto = horas * valorHora;
    final desconto = sexo == 'M' ? 0.10 : 0.05;
    final salarioLiquido = salarioBruto * (1 - desconto);

    print('Código: $codigo');
    print('Nome: $nome');
    print('Salário bruto: R\$ ${salarioBruto.toStringAsFixed(2)}');
    print('Salário líquido: R\$ ${salarioLiquido.toStringAsFixed(2)}');
    print('--------------------------');

    if (sexo == 'M') {
      somaLiquidoM += salarioLiquido;
      qtdM++;
    } else if (sexo == 'F') {
      somaLiquidoF += salarioLiquido;
      qtdF++;
    }
  }

  print('\n--- MÉDIAS ---');
  print('Média líquida dos homens: R\$ ${qtdM == 0 ? "0.00" : (somaLiquidoM / qtdM).toStringAsFixed(2)}');
  print('Média líquida das mulheres: R\$ ${qtdF == 0 ? "0.00" : (somaLiquidoF / qtdF).toStringAsFixed(2)}');
}
