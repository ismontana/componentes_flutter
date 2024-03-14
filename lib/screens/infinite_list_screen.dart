import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class InfinitieListScreen extends StatefulWidget {
  const InfinitieListScreen({super.key});

  @override
  State<InfinitieListScreen> createState() => _InfinitieListScreenState();
}

class _InfinitieListScreenState extends State<InfinitieListScreen> {
    int selectedIndex = 0;
    List screens = const [
    HomeScreen(),
    InputsScreen(),
    NotificationsScreen(),
    ImagesScreen()
  ];

    openScreen(int index){
    setState(() {
      MaterialPageRoute ruta = 
              MaterialPageRoute(builder: (context) => const HomeScreen());
      switch ( index ){
        case 0: ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
                break;
        case 1: ruta = MaterialPageRoute(builder: (context) => const InputsScreen());
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
        appBar: AppBar(title: Text('Lista infinita', style: TextStyle(color: const Color.fromARGB(255, 196, 192, 192)))),
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
            icon: Icon(Icons.input_rounded, 
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