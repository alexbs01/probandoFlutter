import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.blue,

        appBar: AppBar(
          title: const Text('Título del app bar'),
          backgroundColor: Colors.pink,
        ),

        drawer: Drawer(
          backgroundColor: Colors.lightGreen,
          child: ListView(
            children: const [
              ListTile(
                title: Text('Elemento 1'),
                subtitle: Text('Subtítulo del elemento 1'),
                ),

              ListTile(
                title: Text('Elemento 2'),
                leading: Icon(Icons.home), // Añade un icono a la izquierda del título
                ),

              ListTile(
                title: Text('Elemento 3'),
                trailing: Icon(Icons.home), // Añade un icono a la derecha del título
                ),
            ]),
        ),

        endDrawer: Drawer(
          backgroundColor: Colors.yellow,
          child: ListView(
            children: const [
              ListTile(
                title: Text('Elemento 4'),
                onTap: botonPulsado, // Ejecuta una función al pulsar el botón
                ),

              ListTile(
                title: Text('Elemento 5'),
                onLongPress: botonPulsado, // Ejecuta una función al mantener pulsado el botón
                ),

              ListTile(
                title: Text('Elemento 6'),
                enabled: false, // Desactiva un botón
                onTap: botonPulsado,
                ),

              ListTile(
                title: Text('Elemento 7'),
                enableFeedback: false, // Desactiva el sonido al pulsar un botón
                tileColor: Colors.pinkAccent, // Cambia el color de fondo del botón
                onTap: botonPulsado,
                ),
                
                
            ]),
        ),

        body: const Center(
          child: Text('Texto del body',
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
        ),

        floatingActionButton: const FloatingActionButton( // Añade un botón flotante en la parte inferior derecha
          onPressed: botonPulsado,
          backgroundColor: Colors.orangeAccent,
          child: Icon(Icons.add),
        ),

        bottomNavigationBar: BottomNavigationBar( // Añade una barra de navegación en la parte inferior

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Buscar',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Ajustes',
            ),
          ],
        ),
        
      ),
    );
  }
}

void botonPulsado() {
  if (kDebugMode) {
    print('Botón pulsado');
  }
}
