class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
    print('$titular depositou R\$$valor. Novo saldo: R\$$saldo');
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('$titular sacou R\$$valor. Novo saldo: R\$$saldo');
    } else {
      print('Saldo insuficiente para $titular.');
    }
  }
}

class ContaPoupanca extends ContaBancaria {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  void aplicarRendimento(double taxa) {
    saldo += saldo * taxa;
    print('Rendimento aplicado. Novo saldo de $titular: R\$$saldo');
  }
}

void main() {
  var cp = ContaPoupanca('João', 1000.0);
  cp.depositar(200.0);
  cp.aplicarRendimento(0.05); 
  cp.sacar(1500.0);
}