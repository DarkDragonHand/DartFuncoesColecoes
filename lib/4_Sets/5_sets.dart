void main() {
  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(2);
  numerosLista.add(1);
  print(numerosLista);

  //!Set
  //!Tipo de lista que possui tratamento contra itens iguais ou duplicados
  //!Não deixa ter mais de um valor igual
  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(null);
  numerosSet.add(3);
  numerosSet.add(2);
  numerosSet.add(1);
  print(numerosSet);

  //! Converte uma lista para lista Set
  print('.toSet');
  print(numerosLista.toSet());

  numerosSet.forEach(print);

  var numeros1 = {1, 2, 3, 4, 5, 6, 7};
  var numeros2 = {1, 3, 5, 7};

  //!Compara os valores dos elementos diferentes de uma lista pra outra
  print('.difference');
  print(numeros1.difference(numeros2));
  print(numeros2.difference(numeros1));

  //!Une duas listas
  print('.union');
  print(numeros1.union(numeros2));

  //!Compara os valores em comum de duas listas
  print('.intersection');
  print(numeros1.intersection(numeros2));

  var nomes = {'Rodrigo', 'Luana', 'Guilherme'};
  var nomes2 = {'Rodrigo', 'Joaquim', 'Guilherme'};
  print(nomes.intersection(nomes2));

  //!Faz uma busca e compara se o item existe nas duas listas
  print('.lookup');
  print(numeros1.lookup(1));
}
