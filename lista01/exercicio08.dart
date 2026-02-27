void main() {
  var frutas = ['maçã', 'banana', 'manga', 'uva', 'morango', 'melancia'];

  var comM = frutas.where((f) => f.toLowerCase().startsWith('m')).toList();
  print('Frutas com M: $comM');

  var maiusculas = frutas.map((f) => f.toUpperCase()).toList();
  print('Frutas em Maiúsculas: $maiusculas');
}