import 'package:flutter/material.dart';
import 'package:manju_restourent/screens/dish.dart';
import 'package:manju_restourent/screens/dish_item.dart';

class Vegscreen extends StatelessWidget {
  final List<Dish> dishes = [
    Dish(
      id: '1',
      name: 'Paneer Butter Masala',
      description: 'Delicious Italian pasta with tomato sauce',
      price: 12.99,
      imageUrl:
          'https://i.pinimg.com/236x/13/c1/de/13c1de26a3fbdca4e368eb73bbe6769f.jpg',
    ),
    Dish(
      id: '2',
      name: 'Aloo Gobi ',
      description: 'Juicy burger with cheese and lettuce',
      price: 10.99,
      imageUrl:
          'https://i.pinimg.com/236x/bc/e6/70/bce6708952226e5cd34ec0976aa8c19d.jpg',
    ),
    Dish(
      id: '3',
      name: 'Chana Masala',
      description: 'Juicy burger with cheese and lettuce',
      price: 11.99,
      imageUrl:
          'https://i.pinimg.com/236x/7b/8b/9d/7b8b9d1bfe18c813629c8a6ede18fbc8.jpg',
    ),
    Dish(
      id: '4',
      name: 'Vegetable Biryani ',
      description: 'Juicy burger with cheese and lettuce',
      price: 13.99,
      imageUrl:
          'https://i.pinimg.com/236x/b2/d7/f3/b2d7f3c60867266e94e6328b3714495c.jpg',
    ),
    Dish(
      id: '5',
      name: 'Palak Paneer ',
      description: 'Juicy burger with cheese and lettuce',
      price: 15.99,
      imageUrl:
          'https://i.pinimg.com/236x/de/4d/21/de4d215b325b6c233830846f35a2d3ba.jpg',
    ),
    Dish(
      id: '6',
      name: 'Baingan Bharta ',
      description: 'Juicy burger with cheese and lettuce',
      price: 10.99,
      imageUrl:
          'https://i.pinimg.com/236x/0e/56/92/0e5692ac6057062c42852637cc6b272f.jpg',
    ),
  ];

  Vegscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: ListView.builder(
        itemCount: dishes.length,
        itemBuilder: (ctx, i) => DishItem(dish: dishes[i]),
      ),
    );
  }
}
