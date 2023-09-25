import 'package:flutter/material.dart';

import '../models/producto.dart';

class ProductosScreen extends StatelessWidget {
  ProductosScreen({super.key});

  final List<Producto> productos = [
    Producto(foto: 'https://cdn-icons-png.flaticon.com/128/1149/1149810.png', nombre: 'Refresco', stock: 10),
    Producto(foto: 'https://cdn-icons-png.flaticon.com/128/1182/1182129.png', nombre: 'Pan', stock: 0),
    Producto(foto: 'https://cdn-icons-png.flaticon.com/128/5900/5900651.png', nombre: 'Azucar', stock: 5),
    Producto(foto: 'https://cdn-icons-png.flaticon.com/128/1182/1182154.png', nombre: 'Harina', stock: 0),
    Producto(foto: 'https://cdn-icons-png.flaticon.com/128/2829/2829840.png', nombre: 'Cereal', stock: 8),
    Producto(foto: 'https://cdn-icons-png.flaticon.com/128/1971/1971012.png', nombre: 'Manzana', stock: 18),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Productos')),
      body: ListView.builder(
        itemCount: productos.length,
        itemBuilder:(context, index){
          Color tileColor;
          if (productos[index].stock > 0) {
            tileColor = Colors.lime;
          } else {
            tileColor = Colors.red;
          }
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                productos[index].foto,
              ),
            ),
            title: Text(productos[index].nombre),
            subtitle: Text(productos[index].stock.toString()),
            tileColor: tileColor,
            trailing: const Icon(Icons.arrow_right),
          );
        },
      ),
    );
  }
}
