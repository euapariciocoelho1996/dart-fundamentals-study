void main() {
  bool seguirEmFrente = false;

  if (seguirEmFrente) {
    print("Continuando a jornada!");
  } else {
    print("Parando por aqui.");
  }

  switch (seguirEmFrente) {
    case true:
      print("Você escolheu seguir em frente!");
      break;
    case false:
      print("Você decidiu parar.");
      break;
  }
}
