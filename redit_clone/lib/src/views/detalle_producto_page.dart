import 'package:flutter/material.dart';
import 'package:redit_clone/src/api/productos.dart';

class DetalleProductoPage extends StatelessWidget {
  const DetalleProductoPage({
    super.key,
    required this.id,
    this.extras,
  });
  final String id;
  final Map? extras;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle del producto $id'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Image.network(
                extras?["image"],
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            Text('Detalle del producto ${extras?['title']}'),
            Text('Detalle del producto ${extras?['price']}'),
          ],
        ),
      ),
    );
  }
}
