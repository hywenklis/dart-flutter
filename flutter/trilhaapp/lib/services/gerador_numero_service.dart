import 'dart:math';

class GeradorNumero {

  static int aleatorio(int max) {
    Random numero = Random();
    return numero.nextInt(max);
  }
}
