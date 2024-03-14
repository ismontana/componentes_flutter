  import 'package:flutter/material.dart';
  import 'package:practica3/screens/home_screen.dart';
  import 'package:practica3/screens/images_screen.dart';
  import 'package:practica3/screens/infinite_list_screen.dart';
  import 'package:practica3/screens/notifications_screen.dart';
  import 'package:practica3/theme/app_theme.dart';
class DataScreen extends StatefulWidget {
  final String name;
  final bool switchValue;
  final double sliderValue;
  final int radioOption;
  final bool isChecked1;
  final bool isChecked2;
  final bool isChecked3;

  const DataScreen({
    required this.name,
    required this.switchValue,
    required this.sliderValue,
    required this.radioOption,
    required this.isChecked1,
    required this.isChecked2,
    required this.isChecked3,
    Key? key,
  }) : super(key: key);

    @override
    State<DataScreen> createState() => _DataScreenState();
  }

  class _DataScreenState extends State<DataScreen> {
    
    int selectedIndex = 0;
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
      }
      selectedIndex = index;
      print('selectedIndex = $selectedIndex');
      Navigator.push(context, ruta);
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('Datos', style: TextStyle(color: const Color.fromARGB(255, 196, 192, 192))) ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Nombre: ${widget.name}'),
          Text('Switch: ${widget.switchValue ? "Sí" : "No"}'), 
          Text('Valor del Slider: ${widget.sliderValue}'), 
          Text('Opción de Radio: ${widget.radioOption == 1 ? "Kotlin" : "Flutter"}'), 
          Text('Navegador: ${widget.isChecked1 ? "Seleccionado" : "No seleccionado"}'),
          Text('Emulador: ${widget.isChecked2 ? "Seleccionado" : "No seleccionado"}'), 
          Text('Smartphone: ${widget.isChecked3 ? "Seleccionado" : "No seleccionado"}'), 
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
              label: "Inputs"
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
  }