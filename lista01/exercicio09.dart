void main() {
  Map<int, String> produtos = {
    1: 'Notebook',
    2: 'Mouse',
    3: 'Teclado',
    4: 'Monitor',
    5: 'Cadeira'
  };

  int idBusca = 3;
  if (produtos.containsKey(idBusca)) {
    print('Produto $idBusca encontrado: ${produtos[idBusca]}');
  }

  produtos.remove(2); 

  print('\nLista de Produtos Atualizada:');
  produtos.forEach((id, nome) => print('ID: $id | Nome: $nome'));
}