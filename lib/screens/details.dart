import 'package:flutter/material.dart';
import 'package:lab1/models/clothes.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Clothes;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.indigo,
          title: const Text("216040", style:
          TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold))
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.network(
              arguments.image,
              width: 200,
              height: 200,
              fit: BoxFit.cover, // Adjust how the image fits in the box
            ),
            const SizedBox(height: 16),
            Text(
              arguments.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              arguments.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Text(
              'Цена: ${arguments.price}',
              style: const TextStyle(fontSize: 18, color: Color.fromRGBO(0, 102, 0, 1)),
            ),
          ],
        ),
      ),
    );
  }
}
