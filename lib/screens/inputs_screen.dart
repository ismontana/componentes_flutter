import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false; // Inicia apagado
  double valueSlider = 0.0; // Inicia en 0
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Entradas')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Entradas',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
          entradaTexto(context),
          entradaSwitch(),
          entradaSlider(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             ElevatedButton(
                onPressed: null, 
                child: Text(
                  'Regresar'
                ),
                ),
              ElevatedButton(
                onPressed: null, 
                child: Text(
                  'Ir a Data Screen'),
                ),
            ],
          ),
        ],
      ),
    );
  }

  TextField entradaTexto(BuildContext context) {
    return TextField(
          style: Theme.of(context).textTheme.headlineMedium,
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelText: 'Escribe tu nombre: ',
            labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
        );
  }

Row entradaSwitch(){
  return Row(
    children: <Widget>[
      Text(
        '¿Si o no?',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      const SizedBox(
        width: 25.0,
        ),
      Switch(
        value: valueSwitch, 
        onChanged: (value){
          setState(() {
          valueSwitch = value;
          // print('Estado del switch: $valueSwitch'); // Imprime en consola el estado del switch
          });
        },
      ),
    ],
  );
}
  Column entradaSlider(){
    return Column(
      children: [
        Text(
          'Guapo de 1 a 10',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          value: valueSlider, 
          activeColor: AppTheme.mainColor,
          inactiveColor: AppTheme.subtitleColor,
          thumbColor: Colors.purple,
          divisions: 10,
          label: '${valueSlider.round()}',
          onChanged: (value){
            setState(() {
              valueSlider = value;
              // print('Estado del slider: $valueSlider'); // Imprime en consola el estado del Slider
            });
          },
          ),
      ],
    );
  }
}