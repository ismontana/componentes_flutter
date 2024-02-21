import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Entradas',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: null, 
              child: Text(
                'Regresar', 
                style: Theme.of(context).textTheme.bodySmall),
              ),
            ElevatedButton(
              onPressed: null, 
              child: Text(
                'Ir a Data Screen',
                style: Theme.of(context).textTheme.bodySmall,),
              ),
          ],
        ),
      ],
    );
  }
}