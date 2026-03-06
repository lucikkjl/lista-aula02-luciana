/*Crie uma função buscarConfiguracao(String chave) que retorna
Future<String?>.
Implemente um cache local (Map) que pode ou não ter o valor.
Use os operadores ?., ??, e ! Adequadamente.
Se o valor não estiver no cache, busque de uma 'API' (simule com
Future.delayed).
*/

Map<String, String> cache = {'tema': 'escuro'};

Future<String?> buscarDaAPI(String chave) async {
  await Future.delayed(Duration(seconds: 1));
  if (chave == 'idioma') {
    return 'pt-BR'; 
  }
  return null; 
}

Future<String?> buscarConfiguracao(String chave) async {
 return cache[chave] ?? await buscarDaAPI(chave);
}

void main() async {
  print('Buscando configurações...\n');

  String? tema = await buscarConfiguracao('tema');
  print('Tema: ${tema?.toUpperCase()}'); 

  String? idioma = await buscarConfiguracao('idioma');
  print('Tamanho da sigla do idioma: ${idioma!.length} caracteres'); 

  String? fonte = await buscarConfiguracao('fonte');
  String fonteFinal = fonte ?? 'Arial (Valor Padrão)';
  print('Fonte: $fonteFinal'); 
}