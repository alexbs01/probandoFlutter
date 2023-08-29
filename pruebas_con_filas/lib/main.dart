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
          title: const Text('Pruebas con filas y columnas'),
        ),
        
        body: Padding( // Añade una separación entre el borde de la pantalla y el contenido
          padding: const EdgeInsets.all(8.0), // Indicamos el tamaño de la separación
          child: Column(children: [ // Usamos una columnas para añadir los elementos por filas
            Row( // Creamos una fila con un texto y un botón
              children: [
                Text('Switch número 1'),
                Switch(value: false, onChanged: (value) {}), // El botón no funciona porque es un stateless widget y no puede cambiar de estado
              ],
            ),

            const Divider( // Añadimos una línea divisora entre las filas
              height: 8,
              thickness: 3,
              color: Colors.greenAccent,
              
            ),

            Row( // Creamos una fila, pero donde el texto intenta ocupar todo el espacio posible
              children: [
                const Expanded(
                  child: Text('Switch número 2')
                ),
                Switch(value: true, onChanged: (value) {}),
              ],
            ),

            const Divider(
              height: 8,
              thickness: 3,
              color: Colors.lightBlue,
              
            ),
        
            Row( // Otra fila, pero con spaceBetween, da el mismo efecto que Expanded, porque sólo son dos elementos
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Switch número 3'),
                Switch(value: false, onChanged: (value) {}),
              ],
            ),

            const Divider(
              height: 8,
              thickness: 3,
              color: Colors.redAccent,
            ),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Container(
                width: 50,
                height: 30,
                color: Colors.redAccent,
              ),
              Container(
                width: 50,
                height: 30,
                color: Colors.blueAccent,
              ),
              Container(
                width: 50,
                height: 30,
                color: Colors.redAccent,
              ),
              Container(
                width: 50,
                height: 30,
                color: Colors.blueAccent,
              ),
            ],
            )
          ],
          ),
        )
      ),
    );
  }
}