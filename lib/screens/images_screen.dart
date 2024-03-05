import 'package:flutter/material.dart';

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
        ],
        ));
  }

  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)),
            child: const Image(
              image: AssetImage('assets/imgs/img2.png'),
              ),
    );
  }
}