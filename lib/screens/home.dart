import 'package:flutter/material.dart';
import 'package:lab1/models/clothes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Clothes> clothes = [
    Clothes(id: 1, name: "Item1", description: "desc",
        image: "https://chriscross.in/cdn/shop/files/ChrisCrossPlainNavyBlueT-Shirt.jpg", price: 100),
    Clothes(id: 2, name: "Item2", description: "desc",
        image: "https://chriscross.in/cdn/shop/files/ChrisCrossPlainBlackcottonT-Shirt.jpg", price: 100),
    Clothes(id: 3, name: "Item3", description: "desc",
        image: "https://chriscross.in/cdn/shop/files/ChrisCrossPlainOliveGreencottonT-Shirt.jpg", price: 100),
    Clothes(id: 1, name: "Item4", description: "desc",
        image: "https://chriscross.in/cdn/shop/files/ChrisCrossPlainGreyMelanget-shirt.jpg", price: 100),
    Clothes(id: 5, name: "Item5", description: "desc",
        image: "https://chriscross.in/cdn/shop/products/ChrisCrossOliveGreenTshirtLiveYourHobby-min.jpg", price: 100),
    Clothes(id: 6, name: "Item6", description: "desc",
        image: "https://chriscross.in/cdn/shop/files/ChrisCrossEasyRiderBikert-shirt.jpg", price: 100),
    Clothes(id: 7, name: "Item7", description: "desc",
        image: "https://chriscross.in/cdn/shop/files/ChrisCrossPlainNavyBlueT-Shirt.jpg", price: 100),
    Clothes(id: 8, name: "Item8", description: "desc",
        image: "https://chriscross.in/cdn/shop/files/ChrisCrossPlainNavyBlueT-Shirt.jpg", price: 100),
    Clothes(id: 9, name: "Item9", description: "desc",
        image: "https://chriscross.in/cdn/shop/files/ChrisCrossPlainNavyBlueT-Shirt.jpg", price: 100),
    Clothes(id: 10, name: "Item10", description: "desc",
        image: "https://chriscross.in/cdn/shop/files/ChrisCrossPlainNavyBlueT-Shirt.jpg", price: 100),
    Clothes(id: 11, name: "Item11", description: "desc",
        image: "https://chriscross.in/cdn/shop/files/ChrisCrossPlainNavyBlueT-Shirt.jpg", price: 100),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.indigo,
        title: const Text("216040", style:
          TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold))
      ),
      body: ListView.builder(
        itemCount: clothes.length,
        itemBuilder: (context, index){
          final clothing = clothes[index];
          return Card(
            margin: const EdgeInsets.all(10),
            color: const Color.fromRGBO(240, 240, 240, 1),
            child: ListTile(
            leading:
            Image.network(
              clothing.image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(clothing.name),
            subtitle: Text(clothing.description),
            onTap: () => {
              Navigator.pushNamed(context, "/details",
                arguments: Clothes(
                  id: clothing.id,name: clothing.name,
                  description: clothing.description, image: clothing.image, price: clothing.price))
            },
            )
          );
        },
      ),
    );
  }
}
