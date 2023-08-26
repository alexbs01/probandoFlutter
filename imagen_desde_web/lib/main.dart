import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),

          body: Center(
              // Con image network se pueden insertar imágenes desde URL
              child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/A_coruna_torre_de_hercules_sunset_edit.jpg/640px-A_coruna_torre_de_hercules_sunset_edit.jpg')),
          
          drawer: Drawer(
            child: ListView(
                // En el botón de las opciones de arriba a la derecha, abre un desplegable
                children: const [
                  // Con una lista de tres opciones
                  ListTile(
                    // ListTile es un widget que permite crear una opción
                    title: Text('Opción 1'),
                    textColor: Colors.redAccent,
                  ),

                  ListTile(
                    // El color de las opciones se puede cambiar desde ListTile o Text
                    title:
                        Text('Opción 2', style: TextStyle(color: Colors.amber)),
                  ),

                  ListTile(
                    title: Text('Opción 3'),
                    tileColor: Colors.greenAccent, // Tile color da color al fondo de la opción
                  ),
                ]),
          )),
    );
  }
}
