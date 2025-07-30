/* Encapsulamento

Definição:
  Protege os dados de uma classe e controla como eles podem ser acessados ou modificados.
  Como fazer em Dart:

  * Colocar `_` antes do atributo para torná-lo privado.
  * Usar getter e setter para acessar e modificar com segurança.


Getter (`get`)

O que é:
  Um método especial que retorna o valor de um atributo privado.
  Quando usar:

  * Quando você quer permitir leitura de um atributo sem expor diretamente.
  * Pode ter lógica extra antes de devolver o valor.


double get saldo => _saldo; // Apenas lê o valor

Setter (`set`)

O que é:
  Um método especial que altera o valor de um atributo privado com validação.
Quando usar:

  * Quando você quer controlar mudanças no atributo.
  * Impede valores inválidos.


set saldo(double valor) {
  if (valor >= 0) {
    _saldo = valor;
  } else {
    print("Valor inválido!");
  }
}

# **Aula: Abstract Class, Herança e Polimorfismo em Dart**

---

## **O que é uma Abstract Class (Classe Abstrata)?**

Uma **classe abstrata** é **um modelo incompleto** que serve **apenas para ser herdado**.

* **Não pode ser instanciada diretamente**.
* Pode ter **métodos concretos** (com código) e **métodos abstratos** (sem código, só a assinatura).
* É usada quando você quer **definir um padrão** para outras classes.

**Exemplo real:**

* Classe abstrata: **Animal**
* Ninguém cria **"um animal genérico"** no mundo real.
* Cada animal específico (Cachorro, Gato) **herda** e implementa seu próprio comportamento.

```dart
abstract class Animal {
  void emitirSom(); // Método abstrato (sem corpo)
  
  void dormir() {   // Método concreto
    print("O animal está dormindo");
  }
}

class Cachorro extends Animal {
  @override
  void emitirSom() {
    print("Au Au!");
  }
}

class Gato extends Animal {
  @override
  void emitirSom() {
    print("Miau!");
  }
}

void main() {
  // var animal = Animal(); // Erro: não pode instanciar classe abstrata
  Animal meuCachorro = Cachorro();
  Animal meuGato = Gato();

  meuCachorro.emitirSom(); // Au Au!
  meuGato.emitirSom();     // Miau!
  meuCachorro.dormir();    // O animal está dormindo
}
```

---

## **O que é Herança?**

**Herança** é quando uma **classe filha** herda **atributos e métodos** de uma **classe pai**.

* Em Dart usamos a palavra-chave **`extends`**.
* Permite **reaproveitar código** e criar **hierarquia**.

**Exemplo:**

```dart
class Veiculo {
  String marca;

  Veiculo(this.marca);

  void acelerar() {
    print("$marca acelerando...");
  }
}

class Carro extends Veiculo {
  Carro(String marca) : super(marca); // Chama o construtor do pai

  void buzinar() {
    print("$marca buzinando: Biii Biii!");
  }
}

void main() {
  var carro = Carro("Toyota");
  carro.acelerar(); // Toyota acelerando...
  carro.buzinar();  // Toyota buzinando: Biii Biii!
}
```

---

## **O que é Polimorfismo?**

**Polimorfismo** significa **"muitas formas"**.
Na prática, quer dizer que **uma classe pai** pode se **comportar de maneiras diferentes** dependendo da **classe filha** que a implementa.

* O **tipo da variável** pode ser o da **classe pai**.
* Mas **o comportamento real** depende da **classe filha**.

**Exemplo:**

```dart
abstract class Funcionario {
  void trabalhar();
}

class Desenvolvedor extends Funcionario {
  @override
  void trabalhar() {
    print("Desenvolvedor está codando em Dart...");
  }
}

class Designer extends Funcionario {
  @override
  void trabalhar() {
    print("Designer está criando interfaces bonitas...");
  }
}

void main() {
  List<Funcionario> equipe = [
    Desenvolvedor(),
    Designer(),
  ];

  // Polimorfismo: cada funcionário se comporta de forma diferente
  for (var funcionario in equipe) {
    funcionario.trabalhar();
  }

  /*
    Saída:
    Desenvolvedor está codando em Dart...
    Designer está criando interfaces bonitas...
  */
}
```

**Resumo do Polimorfismo:**

* **Mesma função**, comportamentos diferentes dependendo do objeto real.

---

## **Analogia Simples**

Pense em **Instrumentos Musicais**:

* **Classe Abstrata:** `Instrumento` (ninguém toca "um instrumento genérico").
* **Herança:** `Violao`, `Piano`, `Bateria` herdam de `Instrumento`.
* **Polimorfismo:** Quando você chama `tocar()` para cada instrumento, **cada um faz um som diferente**.

---

## **5️Resumo Rápido**

* **Classe Abstrata (`abstract class`)**

  * Modelo incompleto.
  * Não pode ser instanciada.
  * Serve como base para outras classes.

* **Herança (`extends`)**

  * Classe filha reaproveita código da classe pai.
  * Evita duplicação e organiza melhor o projeto.

* **Polimorfismo**

  * Permite tratar diferentes objetos da mesma forma.
  * Cada classe filha implementa comportamentos diferentes para o mesmo método.


*/
