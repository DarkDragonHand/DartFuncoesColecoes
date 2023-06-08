import 'package:dart_funcoes_colecoes/9_desafio/funcoes_desafio.dart';

void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  print('1 - Remova os pacientes duplicados e apresente a nova lista');
  final pessoasSemDuplicado = removerDuplicado(pessoas);
  pessoasSemDuplicado.forEach(print);

  print(
      '2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');
  final mapSexo = mapaPorSexoComIf(pessoasSemDuplicado);
  final masculino = mapSexo['M'] ?? <String>[];
  final feminino = mapSexo['F'] ?? <String>[];
  print('Masculino: (${masculino.length}): $masculino');
  print('Feminino: (${feminino.length}): $feminino');

  print(
      '3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');
  final pessoasMaioresIdade18 = pessoasMais18ComFor1(pessoasSemDuplicado);
  pessoasMaioresIdade18.forEach(
    (pessoa) {
      print('Nome: ${pessoa[0]}, Idade: ${pessoa[1]}');
    },
  );
  print('4 - Encontre a pessoa mais velha e apresente o nome dela.');
  final pessoasOrdenada = ordenarPessoaMaisVelha(pessoasSemDuplicado);
  final pessoaMaisVelha = pessoasOrdenada.first;
  print('A Pessoa mais velha é: ${pessoaMaisVelha[0]}');
}