// ignore_for_file: prefer_function_declarations_over_variables
//! 3 partes que definem uma função

//! 1 - Tipo do Retorno
//! 2 - Nome
//! 3 - Parametros(normais, nomeados e opcionais)
void main() {
  //!Função anônima
  //!Não possui os padrões de uma função, apenas os parametros
  //!Ponto principal dela é que não pode ser chamada como as funções normais
  //!Precisa chamar a variável que recebeu a função anonima

  var funcaoQualquer = () {
    print('Chamou a função da variável');
    return '2000';
  };
  print(funcaoQualquer());

  print('Iniciando chamada');
  chamarUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty) {
      print('Nome veio vazio');
    } else {
      print(nome);
    }
  });
  print('Finalizando chamada');
}

//!Função Arrow(Arrow Function)
int somaInteiros(int numero1, int numero2) => numero1 + numero2;

//!Função pode ser usada como parametro para outra função
//!Se não tiver tipada, é porque retorna void ('Nada aqui'Function())
void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeNome) {
  print('Entrou aqui');
  var nomeCompleto = 'Guilherme Potter Petry';
  print('Finalizando a função chamarUmaFuncaoDeUmParametro');
  print('Invocando funcaoQueRecebeNome');
  funcaoQueRecebeNome(nomeCompleto);
  print('Saiu aqui');
}

//!Typedef
//! Definição de tipo de parametro customizado
//! afim de reduzir o numero de caracteres, criando uma espécie de álias
typedef FuncaoQueRecebeNome = Function(String nome);
void chamarUmaFuncaoDeUmParametro2(FuncaoQueRecebeNome funcaoQueRecebeNome) {
  print('Entrou aqui');
  var nomeCompleto = 'DarkDragonHand';
  print('Finalizando a função chamarUmaFuncaoDeUmParametro');
  print('Invocando funcaoQueRecebeNome');
  funcaoQueRecebeNome(nomeCompleto);
  print('Saiu aqui');
}
typedef FuncaoQueRecebeNomeComplexo = 
String Function(String nome, String nomeCompleto, {required String? a, required String? b, int? numero});