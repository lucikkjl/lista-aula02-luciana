/*Crie um sistema completo que:
(1) autentica o usuário (Future),
(2) busca dados de múltiplas fontes em paralelo (Future.wait),
(3) escuta atualizações em tempo real via Stream,
(4) usa null safety para lidar com dados opcionais. Implemente tratamento
de erros robusto em todas as etapas.*/

import 'dart:async';


Future<String?> autenticarUsuario(String email, String senha) async {
  await Future.delayed(Duration(seconds: 1));
 
  if (email.isEmpty || senha.isEmpty) {
    throw Exception('Credenciais não podem ser vazias.');
  }

  if (email == 'admin@projeto.org' && senha == '1234') {
    return 'token_auth_777'; 
  }
  return null; 
}

Future<int> buscarOngsParceiras() async {
  await Future.delayed(Duration(seconds: 2));
  return 24; 
}

Future<int> buscarProfessoresVoluntarios() async {
  await Future.delayed(Duration(seconds: 2));
  // testar o tratamento de erro no Future.wait
  // throw Exception('Timeout no banco de professores.');
  return 156;
}

Stream<String> muralImpactoSocial() async* {
  List<String> eventos = [
    'Nova ONG cadastrada na região Sul.',
    'Professor Carlos assumiu a turma de Matemática!',
    'Meta atingida: 500 horas de aulas doadas neste mês!'
  ];

  for (String evento in eventos) {
    await Future.delayed(Duration(seconds: 1));
    yield evento;
  }
}

void main() async {
  print('Iniciando Sistema do Projeto Social\n');

  try {
    print('Autenticando...');
    String? token = await autenticarUsuario('admin@projeto.org', '1234');
    
    if (token == null) {
      print('Acesso Negado: E-mail ou senha incorretos.');
      return; 
    }
    print('Usuário logado com sucesso! (Token: $token)\n');

    print('Carregando métricas do painel...');
    try {
      final resultados = await Future.wait([
        buscarOngsParceiras(),
        buscarProfessoresVoluntarios(),
      ]);

      print('Métricas atuais:');
      print('   ONGs atendidas: ${resultados[0]}');
      print('   Educadores ativos: ${resultados[1]}\n');
    } catch (erroBusca) {
      print('Falha parcial ao carregar métricas: $erroBusca\n');
    }

    print('Conectando ao mural de impacto em tempo real...');
    await for (var notificacao in muralImpactoSocial()) {
      print('Ao Vivo -> $notificacao');
    }

    print('\nDashboard carregada completamente!');

  } catch (erroCritico) {
    print('Erro crítico: $erroCritico');
  }
}