void main() {
  String numeroStr = '42';

  int numeroInt = int.parse(numeroStr);
  double numeroDouble = double.parse(numeroStr);
  
  print('Original: $numeroStr (${numeroStr.runtimeType})');
  print('Para int: $numeroInt (${numeroInt.runtimeType})');
  print('Para double: $numeroDouble (${numeroDouble.runtimeType})');

  int valorCem = 100;
  String cemStr = valorCem.toString();
  
  print('\nOriginal: $valorCem (${valorCem.runtimeType})');
  print('Para String: $cemStr (${cemStr.runtimeType})');
}