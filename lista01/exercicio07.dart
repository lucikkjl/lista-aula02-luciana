void main() {

List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    numeros.add(11);
    numeros.remove(5);
    print ('Tamanho da Lista: ${numeros.length}');

    print ('Primeiro número: ${numeros.first}');

    print ('Último número: ${numeros.last}');

    print ('Numeros: ');

    numeros.forEach((f) => print(f));

}