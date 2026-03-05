/*Crie 3 funções assíncronas: autenticar() que retorna um token,
buscarPerfil(token) que retorna dados do usuário, e buscarPedidos(userId)
que retorna uma lista de pedidos. Execute-as em sequência usando
async/await, onde cada uma depende do resultado da anterior.*/

Future<String> autenticar() {
  return Future.delayed(
    Duration(seconds: 1),
    () => 'token123',
  );
}

Future<String> buscarPerfil() {
  return Future.delayed(
    Duration(seconds: 1),
    () => 'dadosDoUsuario',
  );
}

Future<String> buscarPedidos() {
  return Future.delayed(
    Duration(seconds: 1),
    () => 'token123',
  );
}



void main() {
  buscarUsuario()
      .then((nome) {
        print('Usuário: $nome');
      })
      .catchError((erro) {
        print('Erro: $erro');
      })
      .whenComplete(() {
        print('Finalizado!');
      });
}

final token = await autenticar();
final perfil = await buscarPerfil(token);
final pedidos = await buscarPedidos(perfil['id']);