import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter',
        style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255)
        ),
        ),
        ),
        body: ListView(
          children: [
            ListTile(
            leading: const Icon(Icons.shopping_cart_outlined),
            title: Text('Bolso Gucci',
            style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('11-02-2024 - Texaslac',
            style: TextStyle(color: Color.fromARGB(186, 155, 39, 176),
                      fontWeight: FontWeight.bold,
                      ),
            ),
            trailing: const Icon(Icons.arrow_circle_right),
            ),
            const Divider(),
            const ListTile(
            leading: Icon(Icons.shopping_cart_outlined),
            title: Text('Collar Pandora',
            ),      
            subtitle: Text('11-9-2024 - Chicago',
            style: TextStyle(color: Color.fromARGB(186, 155, 39, 176),
                      fontWeight: FontWeight.bold,
                      ),),
            trailing: Icon(Icons.arrow_circle_right),
            ),
            const Divider(),
            const ListTile(
            leading: Icon(Icons.person_4_outlined),
            title: Text('Playera AMIRI',
            ),
            subtitle: Text('18-01-2024 - Apiyork',
            style: TextStyle(color: Color.fromARGB(186, 155, 39, 176),
                      fontWeight: FontWeight.bold,
                      ),
                      ),
            trailing: Icon(Icons.arrow_circle_right),
            ),
          ],
        ),
      );
  }
}