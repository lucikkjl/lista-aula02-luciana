mixin Voador {
  void voar() => print('Voando alto...');
}

mixin Nadador {
  void nadar() => print('Nadando nas águas...');
}

mixin Corredor {
  void correr() => print('Correndo muito rápido...');
}

class Pato with Nadador, Voador {
  String nome;
  Pato(this.nome);
}

class Golfinho with Nadador {
  String nome;
  Golfinho(this.nome);
}

class Avestruz with Corredor {
  String nome;
  Avestruz(this.nome);
}

void main() {
  var donald = Pato('Donald');
  var flipper = Golfinho('Flipper');
  var papaLeguas = Avestruz('Papa-Léguas');

  print('--- ${donald.nome} ---');
  donald.nadar();
  donald.voar();

  print('--- ${flipper.nome} ---');
  flipper.nadar();

  print('--- ${papaLeguas.nome} ---');
  papaLeguas.correr();
}