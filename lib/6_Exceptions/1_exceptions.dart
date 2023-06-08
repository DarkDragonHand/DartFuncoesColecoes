void main() {
  String? nome;
  var idade = '29';

  try {
    var idadeParse = int.parse(idade);
    //nome!.toLowerCase();
    
    if (idadeParse == 29) {
      throw Exception();
    }
  } on FormatException catch (e, s) {
    //print('Erro ao converter idade');
    print(e);
    print(s);
  } on TypeError {
    print('Erro ao converter idade');
  } on Exception {
    print('Erro idade == 29');
  } catch (e) {
    print('Erro ao executar o programa');
  } finally {
    print('Finally');
  }
}
