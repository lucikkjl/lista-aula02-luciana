/*Use StreamController para simular um chat. Crie um controller, adicione 5
mensagens com intervalos de 1 segundo, e use listen() para imprimir cada
mensagem. Não esqueça de fechar o controller ao final.
*/

import 'dart:async';

void main() async {
  final controller = StreamController<String>();

  controller.stream.listen(
    (mensagem) => print('Nova mensagem: $mensagem'),
    onDone: () => print('Chat finalizado!'),
  );

  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    controller.sink.add('Mensagem $i enviada');
  }
  controller.close();
}