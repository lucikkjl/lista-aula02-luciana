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

Future<Map<String, dynamic>> buscarPerfil(String token) {
  return Future.delayed(
    Duration(seconds: 1),
    () => {"id": "user123", "nome": "Luciana"}
  );
}

Future<List<String>> buscarPedidos(String userId) {
  return Future.delayed(
    Duration(seconds: 1),
    () => ["pedido1", "pedido2", "pedido3"],
  );
}

void main() async {
  try {
    final token = await autenticar();
    print('Autenticar: $token');
    
    final perfil = await buscarPerfil(token);
    print('Perfil: $perfil');
    
    final pedidos = await buscarPedidos(perfil['id']);
    print('Pedidos: $pedidos');
  } catch (erro) {
    print('Erro: $erro');
  } finally {
    print('Finalizado!');
  }
}