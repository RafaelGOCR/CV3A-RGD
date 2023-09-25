import 'package:flutter/material.dart';
import 'package:my_app/Practica2309/ejemploFuture.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: EjemploFuture(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primer ejercicio'),
      ),
      body: const Center(
        child: Text('Hola Mundo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_circle),
      ),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int cont = 0;
  Color lightbulbColor = Colors.grey;

  String mensaje = "Hola mundo";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('22TE0008P', style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 68, 98, 2)),),
            const Text('Valor de contador', style: TextStyle(fontSize: 35, color: Colors.blue),),
            Text(cont.toString(), style: const TextStyle(fontSize: 50, color: Colors.red),),
            Icon(
              Icons.lightbulb,
              color: lightbulbColor,
              size: 50,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (cont < 5) {
            setState(() {
              cont++;
              lightbulbColor = cont % 2 == 0 ? Colors.grey : Colors.amber;
            });
          } else {
            setState(() {
              lightbulbColor = Colors.red;
            });
          }
        },
        child: const Icon(Icons.add_circle),
        ),
    );
  }
}