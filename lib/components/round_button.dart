import 'package:flutter/material.dart';
import '../controllers/calculadora_controller.dart';

class RoundButton extends StatelessWidget {
  final String texto;
  final CalculadoraController calculadoraController;
  const RoundButton({super.key, required this.texto, required this.calculadoraController});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        calculadoraController.botaoApertado(texto);
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(5),
        minimumSize: const Size(75, 75),
        backgroundColor: getColorFromText(texto),
      ),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color getColorFromText(text)
  {
    List<String> numeros = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9",];
    
    if (numeros.contains(text)) {
      return const Color.fromARGB(255, 81, 78, 74);
    } else if (text == "C") {
      return const Color.fromARGB(255, 168, 168, 168);
    } else {
      return const Color.fromARGB(255, 250, 171, 43);
    }
  }
}
