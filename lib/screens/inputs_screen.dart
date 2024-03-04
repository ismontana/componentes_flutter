import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false; // Inicia apagado
  bool isCheked1 = false;
  bool isCheked2 = false;
  bool isCheked3 = false;
  bool isCheked4 = false;
  double valueSlider = 0.0; // Inicia en 0
  int selectedIndex = 0;
  int selectedRadioOption = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Entradas', style: TextStyle(color: const Color.fromARGB(255, 196, 192, 192)),)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaTexto(context),
            entradaSwitch(),
            entradaSlider(),
            entradasRadio(),
            Text(
              '¿Qué usas para correr tus apps de Flutter?',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradasCheck(),
            const ElevatedButton(
              onPressed: null, 
              child: Text(
                'Guardar'),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Color.fromARGB(255, 180, 167, 197),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_back_outlined, 
            color: AppTheme.negroColor),
            label: "Home"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined,
            color: AppTheme.negroColor),
            label: "Notificaciones"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined,
            color: AppTheme.negroColor),
            label: "Cuenta"
            ),
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium,
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
      const FlutterLogo(),
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

  Column entradasRadio(){
    return Column(
      children: [
        Text(
          '¿Qué prefieres usar para desarrollo móvil?',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        ListTile(
          title: Text(
            'Kotlin',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 1,
              groupValue: selectedRadioOption,
              onChanged: (value){
                setState(() {
                  selectedRadioOption = value!;
                  print('Opción seleccionada: $selectedRadioOption');
                });
              },),
          ),
        ),
        ListTile(
          title: Text(
            'Flutter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 2,
              groupValue: selectedRadioOption,
              onChanged: (value){
                setState(() {
                  selectedRadioOption = value!;
                  print('Opción seleccionada: $selectedRadioOption');
                });
              },),
          ),
        ),
      ],
    );
  }
    Row entradasCheck(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Navegador',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
            ),
            Checkbox(
              value: isCheked1, 
              onChanged: (value){
                setState(() {
                  isCheked1 = value!;
                  print('Valor de navegador: $isCheked1');
                });
              }
              ),
          Text(
            'Emulador',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
            ),
            Checkbox(
              value: isCheked2, 
              onChanged: (value){
                setState(() {
                  isCheked2 = value!;
                  print('Valor de emulador: $isCheked2');
                });
              }
              ),
          Text(
            'Smartphone',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
            ),
            Checkbox(
              value: isCheked3, 
              onChanged: (value){
                setState(() {
                  isCheked3 = value!;
                  print('Valor de smartphone: $isCheked3');
                });
              }
              ),
        ],
      );
    }
}