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
          title: const Text('Pruebas con Column'),
        ),

        body: SizedBox( // Crea una caja que ocupa el tamaño que le demos
          width: double.infinity, // En este caso, todo el espacio disponible

          child: Column( // El hijo es una columna, que puede tener varios hijos
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Alineación vertical con espacio entre los hijos
            crossAxisAlignment: CrossAxisAlignment.center, // Alinea los hijos horizontalmente al centro dentro del contenedor, que en este caso ocupa todo el ancho
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              const Text('Esto es un texto entre los contenedores'),
              Container(
                color: Colors.green,
                height: 100,
                width: 50,
              ),
              Container(
                color: Colors.blue,
                height: 200,
                width: 100,
              ),
              Container(
                child: const Text('Esto es un texto dentro de un contenedor'),
                height: 50,
                width: 200,
                color: Colors.grey,
              ),
        
              Image.network(
                'https://picsum.photos/250?image=9', 
                height: 200, 
                width: 200,
              ),
              
            ],
          ),
        )
      ),
    );
  }
}