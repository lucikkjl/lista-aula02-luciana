/*Crie um Stream que emite números de 1 a 20. Use .where() para filtrar
apenas números pares, .map() para multiplicar cada um por 2, e .take()
para pegar apenas os 5 primeiros resultados. Imprima o resultado final.*/

Stream<int> numerosStream() async* {
  for (int i = 1; i <= 20; i++) {
    yield i;
  }
}
 
void main() {
  numerosStream()
 .where((n) => n % 2 == 0)
 .map((n) => n * 2)
 .take(5)
 .listen((n) => print(n));
}