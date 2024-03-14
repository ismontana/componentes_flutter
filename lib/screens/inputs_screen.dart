import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica3/screens/data_screen.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  final TextEditingController _textController = TextEditingController();
  bool switchValue = false; // Inicia apagado
bool isChecked1 = false;
bool isChecked2 = false;
bool isChecked3 = false;
  double sliderValue = 0.0; // Inicia en 0
  int selectedIndex = 0;
  int selectedRadioOption = 0;
 List screens = const [
    HomeScreen(),
    InfinitieListScreen(),
    NotificationsScreen(),
    ImagesScreen(),
  ]; 

  openScreen(int index){
    setState(() {
      MaterialPageRoute ruta = 
              MaterialPageRoute(builder: (context) => const HomeScreen());
      switch ( index ){
        case 0: ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
                break;
        case 1: ruta = MaterialPageRoute(builder: (context) => const InfinitieListScreen());
                break;
        case 2: ruta = MaterialPageRoute(builder: (context) => const NotificationsScreen());
                break;
        case 3: ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
                break;
        case 4:
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    }
    selectedIndex = index;
    // sprint('selectedIndex = $selectedIndex');
    Navigator.push(context, ruta);
    });
  }

  // En el método initState()
@override
void initState() {
  super.initState();
  _textController.text = ''; // Inicializa el controlador con un texto vacío
}


void openDataScreen() {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DataScreen(
        name: _textController.text,
        switchValue: switchValue,
        sliderValue: sliderValue,
        radioOption: selectedRadioOption,
        isChecked1: isChecked1,
        isChecked2: isChecked2,
        isChecked3: isChecked3,
      ),
    ),
  );
}

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
            ElevatedButton(
              onPressed: openDataScreen, 
              child: const Text(
                'Guardar'),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Color.fromARGB(255, 44, 43, 44),
        unselectedItemColor: const Color.fromARGB(255, 167, 164, 164),
        onTap: (index) => openScreen(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, 
            color: AppTheme.negroColor),
            label: "Inicio"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined, 
            color: AppTheme.negroColor),
            label: "Lista"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined,
            color: AppTheme.negroColor),
            label: "Notificaciones"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image_outlined,
            color: AppTheme.negroColor),
            label: "Imagenes"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app_outlined,
            color: AppTheme.negroColor),
            label: "Salida"
            ),
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium,
        ),
    );
  }

  TextField entradaTexto(BuildContext context) {
    return TextField(
          controller: _textController,
          style: Theme.of(context).textTheme.headlineMedium,
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelText: 'Escribe tu nombre: ',
            labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
        );
  }

Row entradaSwitch() {
  return Row(
    children: <Widget>[
      const FlutterLogo(),
      Text(
        '¿Sí o no?',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      const SizedBox(
        width: 25.0,
      ),
      Switch(
        value: switchValue, // Utiliza switchValue para el valor del Switch
        onChanged: (value) {
          setState(() {
            switchValue = value; // Actualiza switchValue con el nuevo valor
          });
        },
      ),
    ],
  );
}
Column entradaSlider() {
  return Column(
    children: [
      Text(
        'Guapo de 1 a 10',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      Slider(
        min: 0.0,
          max: 10.0,
          value: sliderValue, 
          activeColor: AppTheme.mainColor,
          inactiveColor: AppTheme.subtitleColor,
          thumbColor: Colors.purple,
          divisions: 10,
          label: '${sliderValue.round()}',
          onChanged: (value) {
          setState(() {
            sliderValue = value; // Actualiza el valor del Slider
          });
        },
      ),
    ],
  );
}

Column entradasRadio() {
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
            onChanged: (value) {
              setState(() {
                selectedRadioOption = value as int; // Actualiza la opción seleccionada
              });
            },
          ),
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
            onChanged: (value) {
              setState(() {
                selectedRadioOption = value as int; // Actualiza la opción seleccionada
              });
            },
          ),
        ),
      ),
    ],
  );
}
 Row entradasCheck() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Navegador',
        style: AppTheme.lightTheme.textTheme.headlineMedium,
      ),
      Checkbox(
        value: isChecked1,
        onChanged: (value) {
          setState(() {
            isChecked1 = value!;
          });
        },
      ),
      Text(
        'Emulador',
        style: AppTheme.lightTheme.textTheme.headlineMedium,
      ),
      Checkbox(
        value: isChecked2,
        onChanged: (value) {
          setState(() {
            isChecked2 = value!;
          });
        },
      ),
      Text(
        'Smartphone',
        style: AppTheme.lightTheme.textTheme.headlineMedium,
      ),
      Checkbox(
        value: isChecked3,
        onChanged: (value) {
          setState(() {
            isChecked3 = value!;
          });
        },
      ),
    ],
  );
}

}