class Produto {
  String nome;
  double preco;
  int estoque;

  Produto(this.nome, this.preco, this.estoque);

  Produto.semEstoque(this.nome, this.preco) : estoque = 0;

  Produto.promocao(this.nome, double precoOriginal, this.estoque) 
    : preco = precoOriginal * 0.8; 

  void exibirInfo() {
    print('Produto: $nome | R\$ ${preco.toStringAsFixed(2)} | Estoque: $estoque');
  }
}

void main() {
  var p1 = Produto('Celular', 1500.0, 10);
  var p2 = Produto.semEstoque('Fone de Ouvido', 200.0);
  var p3 = Produto.promocao('Tablet', 1000.0, 5);

  p1.exibirInfo();
  p2.exibirInfo();
  p3.exibirInfo();
}