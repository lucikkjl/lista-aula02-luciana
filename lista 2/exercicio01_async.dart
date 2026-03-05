/*Crie uma função buscarUsuario() que retorna um Future<String>. Use
Future.delayed para simular um atraso de 2 segundos e retorne um nome
de usuário. Na função main(), chame buscarUsuario() usando .then() e
imprima o resultado.*/ 

Future<String> buscarUsuario() {
  return Future.delayed(
    Duration(seconds: 2),
    () => 'Maria Silva',
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