abstract class Veiculo {
  void acelerar(); // Método abstrato
}

class Carro implements Veiculo {
  @override
  void acelerar() {
    print('Carro acelerando: Vrum vrum!');
  }
}

class Moto implements Veiculo {
  @override
  void acelerar() {
    print('Moto acelerando: Randandandan!');
  }
}

void main() {
  List<Veiculo> frota = [Carro(), Moto()];

  for (var veiculo in frota) {
    veiculo.acelerar();
  }
}