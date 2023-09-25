import 'package:flutter/material.dart';

import '../models/Persona.dart';

class ContactosScreen extends StatelessWidget {
  ContactosScreen({super.key});

  final List<Persona> contactos = [
    Persona(foto: '', nombre: 'Rafael'),
    Persona(foto: '', nombre: 'Hugo'),
    Persona(foto: '', nombre: 'Luis'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de contactos')),
      body: ListView.builder(
        itemCount: contactos.length,
        itemBuilder:(context, index){
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://www.eluniversal.com.mx/resizer/Fm-t7d1qk5OJ2awGLv4vVTdlQLg=/1100x666/cloudfront-us-east-1.images.arcpublishing.com/eluniversal/RY4KMVN2CZGA5JA35K3WLMLI7I.jpg'
                ),
            ),
            title: Text(contactos[index].nombre),
            subtitle: const Text('Apellidos'),
            tileColor: Colors.lime,
            trailing: const Icon(Icons.arrow_right),
          );
        },
      ),
    );
  }
}
