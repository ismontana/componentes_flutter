import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
    int selectedIndex = 0;
    List screens = const [
    HomeScreen(),
    InputsScreen(),
    InfinitieListScreen(),
    NotificationsScreen()
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
        case 2: ruta = MaterialPageRoute(builder: (context) => const InputsScreen());
                break;
        case 3: ruta = MaterialPageRoute(builder: (context) => const NotificationsScreen());
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
            icon: Icon(Icons.input_rounded,
            color: AppTheme.negroColor),
            label: "Entradas"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined,
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
      body: ListView(
        children: [
          imageCard(),
          imageWeb(),
        ],
        ));
  }

  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/imgs/img1.png'),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                'QUIEN ES ESE POKEMON',
                // AppTheme.lightTheme.textTheme.bodySmall
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

    Stack imageWeb(){
    return Stack(
      children: <Widget>[
     const Center(
          child: CircularProgressIndicator()
        ),
       Center(
         child: SizedBox(
            height: 400,
            width: 400,
            child: 
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage, 
              image: 'https://play-lh.googleusercontent.com/m_ShwHL-ke_QIh4ApeMmS_2kjOhlEcnGOdaxJ0FMQ4PupOt9ns31QEwfXyaDvpqxJXg=w526-h296-rw'
              ),
            // Image.network() Mostrar una imagen de la web
          ),
       ),
    ],
    );
  }

}