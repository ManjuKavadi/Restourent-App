import 'package:flutter/material.dart';
import 'package:manju_restourent/screens/dish.dart';
import 'package:manju_restourent/screens/dish_detail_screen.dart';

class DishItem extends StatelessWidget {
  final Dish dish;

  const DishItem({super.key, required this.dish});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          dish.imageUrl,
          height: 100,
          width: 100,
        ),
        title: Text(dish.name),
        subtitle: Text('\$${dish.price}'),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DishDetailScreen(dish: dish),
            ),
          );
        },
      ),
    );
  }
}
