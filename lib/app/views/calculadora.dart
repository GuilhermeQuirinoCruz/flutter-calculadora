import 'package:calculadora/components/button_row.dart';
import 'package:calculadora/controllers/calculadora_controller.dart';
import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});
  
  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  late CalculadoraController calculadoraController;

  @override
  void initState() {
    super.initState();

    calculadoraController = CalculadoraController(exibirResultado);
  }

  void exibirResultado() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Text(
                      calculadoraController.numero,
                      style: const TextStyle(
                        fontSize: 40,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  )
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    ButtonRow(
                      textoBotoes: const ["7", "8", "9", "x"],
                      calculadoraController: calculadoraController,
                    ),
                    const SizedBox(height: 10,),
                    ButtonRow(
                      textoBotoes: const ["4", "5", "6", "-"],
                      calculadoraController: calculadoraController,
                    ),
                    const SizedBox(height: 10,),
                    ButtonRow(
                      textoBotoes: const ["1", "2", "3", "+"],
                      calculadoraController: calculadoraController,
                    ),
                    const SizedBox(height: 10,),
                    ButtonRow(
                      textoBotoes: const ["C", "0", "=", "/"],
                      calculadoraController: calculadoraController,
                    ),
                  ],
                ),
              ],
            ),
          )
        ),
    );
  }
}