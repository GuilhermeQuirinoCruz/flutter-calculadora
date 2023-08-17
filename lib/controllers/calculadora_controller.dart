class CalculadoraController {
  int n1 = -1;
  int n2 = -1;
  String numero = "0";
  String operador = "";
  final void Function() exibirResultado;

  CalculadoraController(this.exibirResultado);

  void botaoApertado(String botao) {
    int n = int.tryParse(botao) ?? -1;
    if (n != -1) {
      if (numero == "0") {
        numero = "";
      }

      numero += n.toString();
    } else if (botao == "C") {
      numero = "0";
      operador = "";
      n1 = -1;
    } else if (botao == "=") {
      calcular();
      operador = "";
    } else {
      if (numero != "") {
        if (operador != "") {
          calcular();
        }
        
        n1 = int.parse(numero);
      }

      operador = botao;
      numero = "";
    }

    exibirResultado();
  }

  void calcular() {
    int resultado = 0;
    n2 = int.parse(numero);

    switch (operador) {
      case "x":
        resultado = n1 * n2;
        break;
      case "-":
        resultado = n1 - n2;
        break;
      case "+":
        resultado = n1 + n2;
        break;
      case "/":
        resultado = n1 ~/ n2;
        break;
    }

    n1 = resultado;
    numero = resultado.toString();
  }
}
