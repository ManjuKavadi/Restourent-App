import 'package:flutter/material.dart';
import 'package:manju_restourent/screens/dish.dart';

class DishDetailScreen extends StatelessWidget {
  final Dish dish;

  const DishDetailScreen({super.key, required this.dish});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(dish.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 410,
              height: 400,
              color: Colors.amber,
              child: Image.network(
                dish.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(dish.description, style: const TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Text('\$${dish.price}', style: const TextStyle(fontSize: 24)),
          ),
        ],
      ),
    );
  }
}
