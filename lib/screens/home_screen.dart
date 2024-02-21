import 'package:flutter/material.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Componentes de flutter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.input_rounded,
                            color: AppTheme.iconColor),
            title: Text(
              'Entradas',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Diferentes widgets para entradas de flutter',
              style: Theme.of(context).textTheme.bodySmall, 
            ),
            trailing: const Icon(Icons.arrow_circle_right,
                                  color: AppTheme.iconColor),
                        onTap: (){
                          final ruta1 = MaterialPageRoute(builder: (context){
                            return const InputsScreen();
                          });
                          Navigator.push(context, ruta1);
                        },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.list_alt_outlined,
                                color: AppTheme.iconColor),
            title: Text(
              'ListView.Builder',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Scroll infinito',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: const Icon(Icons.arrow_circle_right,
                                  color: AppTheme.iconColor),
                          onTap: (){
                          final ruta2 = MaterialPageRoute(builder: (context){
                            return const InfinitieListScreen ();
                          });
                          Navigator.push(context, ruta2);
                        },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notification_add,
                                color: AppTheme.iconColor),
            title: Text(
              'Notificaciones',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Creación de notificaciones',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: const Icon(Icons.arrow_circle_right,
                                  color: AppTheme.iconColor),
                          onTap: (){
                          final ruta3 = MaterialPageRoute(builder: (context){
                            return const NotificationsScreen();
                          });
                          Navigator.push(context, ruta3);
                        },
          ),
        ],
      ),
    );
  }
}
