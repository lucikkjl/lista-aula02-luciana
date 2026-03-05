/*Pegue o exercício anterior e reescreva a chamada na main() usando
async/await ao invés de .then(). Adicione tratamento de erros com try/catch.
Para testar o erro, faça a função lançar uma exceção ocasionalmente.*/

import 'exercicio01_async.dart';

void carregarDados() async {
  try {
    print('Buscando usuário...');
    String nome = await buscarUsuario();
    print('Usuário: $nome');
  } catch (erro) {
    print('Erro: $erro');
  }
}
void main() {
  carregarDados();
}