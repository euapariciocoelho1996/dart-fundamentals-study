// classe representa um objeto da vida real
// atributos são as caracteristicas do objeto
// métodos são as ações que o objeto pode realizar

void main() {
  Celular celular = Celular("Preto", "iPhone 13", 2021);

  print("Cor: ${celular.cor}");
  print("Modelo: ${celular.modelo}");
  print("Ano: ${celular.ano}");
}

class Celular {
  final String cor;
  final String modelo;
  final int ano;

  Celular(this.cor, this.modelo, this.ano);
}
