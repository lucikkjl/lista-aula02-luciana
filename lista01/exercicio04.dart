double calcularArea(double largura, double altura) {
  return largura * altura;
}

double calcularAreaArrow(double largura, double altura) => largura * altura;

void main() {
  print('Área (Tradicional): ${calcularArea(5, 10)}');
  print('Área (Arrow): ${calcularAreaArrow(5, 10)}');
}