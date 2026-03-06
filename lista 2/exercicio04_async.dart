/*Crie 4 funções que simulam chamadas de API diferentes: buscarProdutos(),
buscarCategorias(), buscarPromocoes() e buscarDestaques(). Use
Future.wait() para executar todas ao mesmo tempo. Meça o tempo total de
execução e compare com execução sequencial.
*/

Future<String> buscarProdutos() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Produtos';
}

Future<String> buscarCategorias() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Categorias';
}

Future<String> buscarPromocoes() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Promoções';
}

Future<String> buscarDestaques() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Destaques';
}

void main() async {
  print('Iniciando buscas paralelas...');
  final inicio = DateTime.now();

  try {
    var resultados = await Future.wait([
      buscarProdutos(),
      buscarCategorias(),
      buscarPromocoes(),
      buscarDestaques(),
    ]);

    final fim = DateTime.now();
    print('Resultados: $resultados');
    print('Tempo total: ${fim.difference(inicio).inSeconds} segundos.');
  } catch (e) {
    print('Erro: $e');
  }
}