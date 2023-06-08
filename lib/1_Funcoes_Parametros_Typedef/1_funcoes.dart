//! 3 partes que definem uma função

//! 1 - Tipo do Retorno
//! 2 - Nome
//! 3 - Parametros

void main() {
  final valorCalculado = somaInteiros(10, 10);
  print('A soma dos dois inteiros é: $valorCalculado');
}

int somaInteiros(int numero1, int numero2) {
  print('Executando a soma de inteiros ($numero1, $numero2)');
  //! Pratica não recomendada pelo CleanCode, pois ta criando uma váriavel apenas pra retornar um valor
  //! Considerando que toda variável ocupa um espaço na memória, estará ocupando mais memória do que o necessário
  /*final soma = numero1 + numero2;
  return soma;*/
  //! O retorno recomendado pela pratica do CleanCode, sempre que possível
  //! sem criar uma variável apenas pra receber 1 valor e retornar;
  return numero1 + numero2;
}
