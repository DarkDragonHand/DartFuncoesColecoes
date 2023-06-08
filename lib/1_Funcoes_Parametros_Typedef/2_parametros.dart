void main() {
  //!Parametros obrigatórios por default
  print('A soma dos inteiros 10 e 10 é igual a: ${somaInteiros(10, 10)}');

  //!Parametros nomeados
  //!Parametros nomeados são nullable por default
  //!Parametros nomeados podem ser promovidos para non-nullable com checagem de null
  //!Parametros nomeados precisam colocar o nome dos parametros criados que vai ta recebendo o valor
  //!E podem ser nomeados em qualquer ordem, não há necessidade de ser sequencial.
  print(
      'A soma dos doubles 10.5 e 10.8 é igual a: ${somaDoubles(numero1: 10.5, numero2: 10.8)}');
  print(
      'A soma dos doubles 9.5 e 10.1 é igual a: ${somaDoubles(numero2: 9.5, numero1: 10.1)}');

  //!Parametros nomeados obrigatórios
  //!Praticamente são as mesmas caracteristicas dos parametros nomeados
  //!Mas são obrigatórios a serem passados, precisa passar todos que possuir a chamada 'required'.
  //!Podem ser nullable
  print(
      'A soma dos doubles 10.1 e 10.1 é igual a: ${somaDoublesObrigatorios(numero2: 10.1, numero1: 10.1)}');
  print(
      'A soma dos doubles 1 e 10.1 é igual a: ${somaDoublesObrigatorios2(numero1: null, numero2: 10.1)}');
  print('A soma dos doubles é igual a: ${somaDoublesDefault()}');
  print('A soma dos doubles é igual a: ${somaDoublesDefault(numero1: 10)}');
  print('A soma dos doubles é igual a: ${somaDoublesDefault(numero2: 20)}');

  //!Parametros Opcionais
  somaInteirosOpcional();
  somaInteirosOpcional(1);
  somaInteirosOpcional(1, 1);

  //!Parametros normais + nomeados
  parametrosNormaisComNomeados(4, nome: 'Guilherme Potter Petry', idade: 29);
  parametrosNormaisComNomeados2(1,'Nome Opcional e idade também');
}

//!Parametros obrigatórios por default
int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

//!Parametros nomeados
double somaDoubles({double? numero1, double? numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }
  return 0.0;
}

double somaDoublesDefault({double numero1 = 0, double numero2 = 0}) {
  return numero1 + numero2;
}

//!Parametros nomeados obrigatórios
double somaDoublesObrigatorios(
    {required double numero1, required double numero2}) {
  return numero1 + numero2;
}

double somaDoublesObrigatorios2(
    {required double? numero1, required double numero2}) {
  /*if (numero1 == null) {
    numero1 = 0;
  }*/
  numero1 ??= 1;

  return numero1 + numero2;
}

//!Parametros Opcionais
int somaInteirosOpcional([int numero1 = 0, int numero2 = 0]) {
  return numero1 + numero2;
}

void parametrosNormaisComNomeados(int numero,
    {required String nome, required int idade}) {}
void parametrosNormaisComNomeados2(int numero, [String? nome, int? idade]) {}