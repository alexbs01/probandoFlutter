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
          actions: const <Widget>[
            IconButton(
              icon: Icon(Icons.add_alert), 
              onPressed: presionarBoton,
                  ),
            IconButton(
              icon: Icon(Icons.add_a_photo), 
              onPressed: presionarBoton,
            )
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          leading: const IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: presionarBoton,
          ),

          centerTitle: true,

          backgroundColor: Colors.red[400],
        ),

        /*drawer: const Drawer( // No se puede usar con el drawer si hay leading
          child: Text('Hola Mundo'),
        ),*/

        body: const Center(
          child: Text('Hello World'),
        ),
      ),  
    );
        
  }
}

void presionarBoton() {
  print('Botón presionado');
}
