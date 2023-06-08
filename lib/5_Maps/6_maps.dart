void main() {
  //!Mapa é uma representação de Chave:Valor
  final paciente = <String, String>{
    'nome': 'Guilherme Potter Petry',
    'curso': 'Academia do Flutter'
  };
  print(paciente);

  //!O mapa pode ser nulo, mas se for criado deve
  //!conter a chave e o valor não nulos
  Map<String, String>? pacienteNullSafety = null;
  //!O mapa e o valor não podem ser nulos mas a chave pode ser nula
  var pacienteNullSafety2 = <String?, String>{
    null: 'Guilherme',
  };
  //!O mapa e a chave não podem ser nulos mas o valor pode ser nulo
  var pacienteNullSafety3 = <String, String?>{
    'nome': null,
  };

  //!Adicionar nova chave:valor num Map se a chave:valor não existir dentro dela
  print('.putIfAbsent');
  var produtos = <String, String>{};
  produtos.putIfAbsent('nome', () => 'curso');
  produtos.putIfAbsent('linguagem', () => 'Dart');
  print(produtos);

  //!Atualiza uma chave valor existente
  produtos.update('nome', (value) => 'Academia do Flutter');
  //!ifAbsent atualiza adicionando novo valor e chave se não existir no mapa
  produtos.update(
    'Preço',
    (value) => '1200',
    ifAbsent: () => '1200',
  );
  print(produtos);

  //!Recuperando valor
  print('Produto: ${produtos['nome']}');
  print('Produto: ${produtos['linguagem']}');

  produtos.forEach((key, value) {
    print('Chave: $key, Valor: $value');
  });

  //!Fazer algum processo assyncrono dentro dele
  for (var entry in produtos.entries) {
    print('Chave: ${entry.key}, Valor: ${entry.value}');
  }
  for (var key in produtos.keys) {
    print('Chave: $key');
  }
  for (var value in produtos.values) {
    print('Valor: $value');
  }

  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key, value.toUpperCase());
  });
  print(novoMapaProdutos);

  var mapa = <String, Object>{
    'nome': 'Guilherme Potter Petry',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de Flutter do Brasil'
      },
      {
        'nome': 'Arquiteto Flutter',
        'descricao': 'Criador da estrutura do framework',
      }
    ]
  };
  print(mapa);
  print(mapa['nome']);
  print(mapa['cursos']);
}
