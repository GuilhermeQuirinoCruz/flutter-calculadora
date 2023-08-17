import 'package:calculadora/components/round_button.dart';
import 'package:calculadora/controllers/calculadora_controller.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<String> textoBotoes;
  final CalculadoraController calculadoraController;
  const ButtonRow({super.key, required this.textoBotoes, required this.calculadoraController});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RoundButton(texto: textoBotoes[0], calculadoraController: calculadoraController,),
        RoundButton(texto: textoBotoes[1], calculadoraController: calculadoraController,),
        RoundButton(texto: textoBotoes[2], calculadoraController: calculadoraController,),
        RoundButton(texto: textoBotoes[3], calculadoraController: calculadoraController,),
      ],
    );
  }
}
