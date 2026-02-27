void saudar({required String nome, String titulo = 'Sr.', bool mostrarHora = false}) {
  String saudacao = 'Olá, $titulo $nome!';
  
  if (mostrarHora) {
    saudacao += ' A hora atual é ${DateTime.now().hour}:${DateTime.now().minute}.';
  }
  
  print(saudacao);
}

void main() {
  saudar(nome: 'Silva'); 
  saudar(nome: 'João', mostrarHora: true);
}