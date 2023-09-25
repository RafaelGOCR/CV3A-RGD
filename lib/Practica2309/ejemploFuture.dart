import 'dart:math';
import 'package:flutter/material.dart';

class EjemploFuture extends StatefulWidget {
  const EjemploFuture({super.key});

  @override
  State<EjemploFuture> createState() => _EjemploFutureState();
}

class _EjemploFutureState extends State<EjemploFuture> {

  late Future<int> numero;
   Color colortext = colorAleatorio();

  @override
  void initState() {
    super.initState();
    numero = obtenerNumero();
  }

  Future<int> obtenerNumero(){
    return Future.delayed(const Duration(seconds: 4), () {
      return Random().nextInt(10);
    });
  }

  static Color colorAleatorio() {
    final Random random = Random();
    return Color.fromARGB(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: obtenerNumero(),
          builder: (context, snapshot) {

            switch (snapshot.connectionState){
              case ConnectionState.waiting:
              return const CircularProgressIndicator();
              default:
                if(snapshot.hasError){
                  return const Text("Error");
                }
                else if (snapshot.hasData){
                  int data = snapshot.data!;
                  return Text(
                    data.toString(),
                    style: TextStyle(
                      color: colortext,
                      fontSize: 25,
                    ),
                  );
                } else {
                  return const Text("No hay datos");
                }
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            colortext = colorAleatorio();
          });
        },
        child: const Icon(Icons.plus_one),),
    );
  }
}