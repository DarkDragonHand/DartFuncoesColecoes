void main() {
  //var cor = 'roxo';
  var cor = Cores.preto;
  if (cor == Cores.preto) {}

  //! Transformando a string preto em um enum Cores.preto
  //! Antes da versão 2.15
  var preto = 'preto';
  var corPreto = Cores.values.where((cor) => cor.toString() == 'Cores.$preto');
  print(corPreto);

  //! A partir da 2.15
  print(Cores.preto.name);
  var corPreto215 = Cores.values.byName(preto);
  print(corPreto215);

  var coresMap = Cores.values.asMap();
  print(coresMap);

  var coresNameMap = Cores.values.asNameMap();
  print(coresNameMap);

  var corPretoPeloMap = coresNameMap[preto];
  print(corPretoPeloMap);

  //Cores.values.byName('branco');
  var corBranco = coresNameMap['branco'];
  print(corBranco);
}

enum Cores { preto, roxo, amarelo, vermelho, verde }