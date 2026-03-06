/*Simule eventos de usuário (cliques, scrolls, inputs) usando um Stream. Crie
uma função que emite eventos aleatórios a cada 500ms. Implemente
debounce (aguardar 1 segundo de inatividade) usando Stream.periodic e
lógica customizada para processar apenas o último evento.

Dica: Use StreamTransformer ou RxDart para debounce
Ou implemente manualmente com Timer
*/

import 'dart:async';

void main() async {
  print('Simulando interações do usuário...');

  Stream<String> eventosStream = Stream.periodic(
    Duration(milliseconds: 500),
    (count) => 'Clique ${count + 1}',
  ).take(5); 

  Timer? debounceTimer;

  eventosStream.listen((evento) {
    print('Detectado: $evento');

    debounceTimer?.cancel();

    debounceTimer = Timer(Duration(seconds: 1), () {
      print('Processando o último evento: $evento');
    });
  }, onDone: () {
    print('Fim dos cliques. Aguardando inatividade para processar...');
  });
}