import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Imágenes',
          style: TextStyle(color: const Color.fromARGB(255, 196, 192, 192)),
          ),
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