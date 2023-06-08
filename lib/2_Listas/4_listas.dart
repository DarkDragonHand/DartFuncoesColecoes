void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach((printAcademia) {
    print(printAcademia);
  });

  //!Expand
  //!Array bidimensional
  print('.expand');
  var lista = [
    [1, 2],
    [3, 4]
  ];
  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  //!Any
  print('.any');
  final listaBusca = ['Rodrigo, João, José'];
  if (listaBusca.any((nome) => nome == 'João')) {
    print('Tem João na lista');
  } else {
    print('Não tem João na lista');
  }

  //!Every
  print('.every');
  final listaBusca2 = ['Rodrigo, João, José'];
  if (listaBusca2.every((nome) => nome.contains('J'))) {
    print('Todos os nomes tem a letra J');
  } else {
    print('Nem todos os nomes tem a letra J');
  }

  //!Sort
  //!O sort ele não cria uma nova lista com as alterações feitas e manter a original
  //!Ele trabalha e altera na mesma lista original(passagem de parametro por referencia de memória)
  print('.sort');
  var listaParaOrdenacao = [99, 20, 10, 9, 0, 765, 1, 2, 3, 100, 300];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaNomesOrdenacao = ['Rodrigo, João, José, André, Arthur'];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);

  var listaPacientes = [
    'Rodrigo Rahman|37',
    'Luana Rahman|35',
    'Guilherme|18',
    'Arthur|15',
    'Antonio|50',
  ];
  listaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(listaPacientes);

  //!CompareTo
  print('.sort com .compareTo');
  var listaPacientes2 = [
    'Rodrigo Rahman|37',
    'Luana Rahman|35',
    'Guilherme|18',
    'Joaquim|5',
    'Diana|10',
    'Arthur|15',
    'Antonio|50',
  ];

  listaPacientes2.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPacientes2);
}