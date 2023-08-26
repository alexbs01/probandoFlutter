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
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),

        body: const Center(
          child: IconButton( // IconButton es un widget que permite agregar un botón con un icono
            icon: Icon(
              Icons.android_sharp,
              color: Colors.green,
            ), // Con esta línea se agrega un icono
            onPressed: imprimirPorPantalla,  // Establecemos que queremos hacer cuando se presione
            splashColor: Colors.yellowAccent, // Pone un color cuando se presiona
            highlightColor: Colors.red, // Pone un color cuando se mantiene presionado el botón
            tooltip: 'Prueba de tooltip', // Muestra un mensaje cuando se mantiene presionado el botón
            iconSize: 300, // Redimensiona el icono
            visualDensity: VisualDensity.compact,
          ),
        ),
      )
    );
  }
}

void imprimirPorPantalla() {
  if (kDebugMode) {
    print('Prueba de botón');
  }
}