import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget { 

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      );
  }
}

class MyHomePage extends StatelessWidget {
  String tituloAplicacion = 'Mi primera app';

  MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // Barra superior, con el titulo de la aplicación
        title: Text(  // Establece un título en la barra superior
          tituloAplicacion, 
          style: const TextStyle(color: Colors.black), // Aplica un estilo al texto
        ),
        backgroundColor: Colors.lightGreenAccent,
        shadowColor: Colors.red,
        centerTitle: true,
        elevation: 10, // Altura de la sombra de la barra superior
        scrolledUnderElevation: 10,
      ),

      body: const Center( // Centra el contenido de la aplicación, que en este caso es un texto
        child: Text(
          'Hello world',
          style: TextStyle( // Aplica un estilo al texto
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
            backgroundColor: Colors.yellowAccent,
          ),
        ),
      ),
    );
  }
}

