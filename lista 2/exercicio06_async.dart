/*Crie uma função contadorStream() que retorna um Stream<int>. Use async*
e yield para emitir números de 1 a 10 com intervalo de 1 segundo entre
cada emissão. Use listen() para imprimir cada número recebido.
*/

Stream<int> contadorStream() async* {
  for (int i = 1; i <= 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() {
  print('Iniciando contador...');
  contadorStream().listen((numero) {
    print('Número: $numero');
  }, onDone: () {
    print('Contagem finalizada!');
  }, onError: (erro) {
    print('Erro: $erro');
  });
}