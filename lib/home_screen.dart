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
            leading: const Icon(Icons.input_outlined),
            title: Text('Entradas',
            style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('Diferentes entradas de flutter',
            style: TextStyle(color: Color.fromARGB(186, 155, 39, 176),
                      fontWeight: FontWeight.bold,
                      ),
            ),
            trailing: const Icon(Icons.arrow_circle_right),
            ),
            const Divider(),
            ListTile(
            leading: const Icon(Icons.list_alt_outlined),
            title: Text('ListView.Builder',
            style: Theme.of(context).textTheme.headlineLarge,
            ),      
            subtitle: Text('Scroll infinito',
            style: TextStyle(color: Color.fromARGB(186, 155, 39, 176),
                      fontWeight: FontWeight.bold,
                      ),),
            trailing: Icon(Icons.arrow_circle_right),
            ),
            const Divider(),
            ListTile(
            leading: const Icon(Icons.notification_add),
            title: Text('Notificaciones',
            style: Theme.of(context).textTheme.headlineLarge,
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