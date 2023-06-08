List<List<String>> removerDuplicado(List<String> pessoas) {
  final pessoasSemDuplicado =
      pessoas.toSet().map((paciente) => paciente.split('|')).toList();
  return pessoasSemDuplicado;
}

Map<String, List<String>> mapaPorSexoComIf(
    List<List<String>> pessoasSemDuplicado) {
  final mapSexo = <String, List<String>>{
    'M': [''],
    'F': ['']
  };
  final List<String> listaMasculino = [];
  final List<String> listaFeminino = [];

  for (var pessoa in pessoasSemDuplicado) {
    final sexo = pessoa[2].toLowerCase();

    if (sexo == 'masculino') {
      listaMasculino.add(pessoa[0]);
    }
    if (sexo == 'feminino') {
      listaFeminino.add(pessoa[0]);
    }

    mapSexo['M'] = listaMasculino;
    mapSexo['F'] = listaFeminino;
  }
  return mapSexo;
}

Map<String, List<String>> mapaPorSexoComNullAwareOperator(
    List<List<String>> pessoasSemDuplicado) {
  final mapSexo = <String, List<String>>{};
  for (var pessoa in pessoasSemDuplicado) {
    final sexo = pessoa[2].toLowerCase();
    final listaMasculino = mapSexo['M'] ?? <String>[];
    final listaFeminino = mapSexo['F'] ?? <String>[];

    if (sexo == 'masculino') {
      listaMasculino.add(pessoa[0]);
    }
    if (sexo == 'feminino') {
      listaFeminino.add(pessoa[0]);
    }

    mapSexo['M'] = listaMasculino;
    mapSexo['F'] = listaFeminino;
  }

  return mapSexo;
}

Map<String, List<String>> mapaPorSexoComSwitch(
    List<List<String>> pessoasSemDuplicado) {
  final mapSexo = <String, List<String>>{};
  final listaMasculino = <String>[];
  final listaFeminino = <String>[];

  for (var pessoa in pessoasSemDuplicado) {
    final sexo = pessoa[2].toLowerCase();
    switch (sexo) {
      case 'masculino':
        listaMasculino.add(pessoa[0]);
        break;
      case 'feminino':
        listaFeminino.add(pessoa[0]);
        break;
    }
    mapSexo['M'] = listaMasculino;
    mapSexo['F'] = listaFeminino;
  }
  return mapSexo;
}

List<List<String>> pessoasMais18ComFor1(List<List<String>> pessoasSemDuplicado) {
  List<List<String>> pessoasMaioresDe18 = [];
  for (var i = 0; i < pessoasSemDuplicado.length; i++) {
    List<String> listaDadosPessoas = [];
    final nomePessoa = pessoasSemDuplicado[i][0];
    final idadePessoa = int.parse(pessoasSemDuplicado[i][1]);
    if (idadePessoa >= 18) {
      listaDadosPessoas.add(nomePessoa);
      listaDadosPessoas.add(idadePessoa.toString());
      pessoasMaioresDe18.add(listaDadosPessoas);
    }
  }
  return pessoasMaioresDe18;
}
List<List<String>> pessoasMais18ComFor2(List<List<String>> pessoasSemDuplicado) {
  List<List<String>> pessoasMaiores18 = [];
  for (var i = 0; i < pessoasSemDuplicado.length; i++) {
    if (int.parse(pessoasSemDuplicado[i][1]) >= 18) {
      pessoasMaiores18.add(pessoasSemDuplicado[i]);
    }
  }
  return pessoasMaiores18;
}

List<List<String>> pessoasMais18(List<List<String>> pessoasSemDuplicado) {
  final pessoasMaiores18 = pessoasSemDuplicado.where((pessoa) {
    final idade = int.tryParse(pessoa[1]) ?? 0;
    return idade > 18;
  }).toList();
  return pessoasMaiores18;
}

List<List<String>> ordenarPessoaMaisVelha(
    List<List<String>> pessoasSemDuplicado) {
  final pessoasOrdenada = [...pessoasSemDuplicado];
  pessoasOrdenada.sort((pessoa1, pessoa2) {
    final idadePessoa1 = int.parse(pessoa1[1]);
    final idadePessoa2 = int.parse(pessoa2[1]);
    return idadePessoa2.compareTo(idadePessoa1);
  });
  return pessoasOrdenada;
}