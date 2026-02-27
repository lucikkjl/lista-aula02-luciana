void main() {
  const pi = 3.14159; //é resolvido em tempo de compilação
  final dataAtual = DateTime.now(); //é resolvido em tempo de execução

  print('PI: $pi');
  print('Data Atual: $dataAtual');

  pi = 3.14; //constante não podem receber um novo valor
  dataAtual = DateTime.now(); //variáveis final só podem ser atribuídas uma vez
}
