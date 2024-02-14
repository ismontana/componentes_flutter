import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
        ),
        body: ListView(
          children: const [
            ListTile(
            leading: Icon(Icons.soap_rounded),
            title: Text('Ya vamonos',
                      style: TextStyle(color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      ),
            ),
            subtitle: Text('11-02-2024 - Texaslac'),
            trailing: Icon(Icons.arrow_circle_right),
            ),
            Divider(),
            ListTile(
            leading: Icon(Icons.calculate_rounded),
            title: Text('Ya vamonos, por favor',
            style: TextStyle(color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      ),
            ),      
            subtitle: Text('11-9-2024 - Chicago'),
            trailing: Icon(Icons.arrow_circle_right),
            ),
            Divider(),
            ListTile(
            leading: Icon(Icons.mosque_rounded),
            title: Text('Ya vamonos T LO RUEGOOOOOO',
            style: TextStyle(color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      ),
            ),
            subtitle: Text('18-01-2024 - Apiyork'),
            trailing: Icon(Icons.arrow_circle_right),
            ),
          ],
        ),
      );
  }
}