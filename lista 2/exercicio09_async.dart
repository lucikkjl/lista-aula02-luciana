/*Crie um StreamController.broadcast() que permite múltiplos listeners.
Adicione 3 listeners diferentes que processam os dados de formas distintas
(um imprime, outro conta, outro soma). Emita 10 números e observe todos
os listeners receberem os dados.
*/

import 'dart:async';

void main() async {
  final controller = StreamController<int>.broadcast();
  int contador = 0;
  int soma = 0;

  controller.stream.listen((n) => print('L1 (Imprime): Recebeu $n'));

  controller.stream.listen((n) {
    contador++;
    print('L2 (Conta): Total de eventos = $contador');
  });

  controller.stream.listen((n) {
    soma += n;
    print('L3 (Soma): Valor acumulado = $soma');
  });

  for (int i = 1; i <= 10; i++) {
    controller.sink.add(i);
    await Future.delayed(Duration(milliseconds: 200)); 
  }

  controller.close();
}

