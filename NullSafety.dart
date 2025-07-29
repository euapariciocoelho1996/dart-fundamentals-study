/*
O que é Null Safety (em linguagem simples)
Null Safety é um jeito do Dart te ajudar a evitar erros quando uma variável não tem valor (null).
Ele obriga você a deixar claro se uma variável pode ou não ficar vazia.*/
void main() {
  String? nome;
  print(nome); // Aqui, nome pode ser null, então não dá erro.

  late String sobrenome;
  sobrenome =
      "Silva"; // Aqui, usamos late para dizer que vamos definir sobrenome depois.
  print(sobrenome);

  // late String sobrenome; → não pode ser null em nenhum momento.
  // late String? sobrenome; → pode ser null antes e depois de atribuir.
}
