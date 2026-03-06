/*Crie uma função que busca dados de uma API lenta (delay de 5 segundos).
Use .timeout() para cancelar a operação se demorar mais de 3 segundos.
Trate a exceção TimeoutException e exiba uma mensagem amigável ao
usuário.
*/

import 'dart:async';

Future<String> buscarDadosLentos() async {
  // Simula operação demorada
  await Future.delayed(Duration(seconds: 5));
  return 'Dados carregados!';
}

void main() async {
  print('Buscando dados...');

  try {
    final resultado = await buscarDadosLentos().timeout(Duration(seconds: 3));
    print(resultado);
  } on TimeoutException {
    print('Operação demorou muito e foi cancelada!');
  } catch (e) {
    print('Erro: $e');
  }
}