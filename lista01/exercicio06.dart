double executarOperacao(double a, double b, Function operacao) {
  return operacao(a, b);
}

void main() {
  double soma = executarOperacao(10, 5, (a, b) => a + b);
  double multiplicacao = executarOperacao(10, 5, (a, b) => a * b);
  double subtracao = executarOperacao(10, 5, (a, b) => a - b);


  print('Soma: $soma');
  print('Multiplicação: $multiplicacao');
  print('Subtração: $subtracao');
}