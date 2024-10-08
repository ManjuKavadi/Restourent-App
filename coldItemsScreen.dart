import 'package:flutter/material.dart';
import 'package:manju_restourent/screens/dish.dart';
import 'package:manju_restourent/screens/dish_item.dart';

class Colditemsscreen extends StatelessWidget {
  final List<Dish> dishes = [
    Dish(
      id: '1',
      name: 'Lemonade',
      description: 'Delicious Italian pasta with tomato sauce',
      price: 12.99,
      imageUrl:
          'https://i.pinimg.com/236x/5e/4c/21/5e4c2119802bae5ef8df00c37505a128.jpg',
    ),
    Dish(
      id: '2',
      name: 'Watermelon Juice',
      description: 'Juicy burger with cheese and lettuce',
      price: 10.99,
      imageUrl:
          'https://i.pinimg.com/236x/ab/4d/bf/ab4dbf38511651da712fb3f85d4d11f5.jpg',
    ),
    Dish(
      id: '3',
      name: 'Mango Lassi',
      description: 'Juicy burger with cheese and lettuce',
      price: 11.99,
      imageUrl:
          'https://i.pinimg.com/236x/97/25/ec/9725eca29432bd79fc5dbc34d1dffc75.jpg',
    ),
    Dish(
      id: '4',
      name: 'Orange Juice ',
      description: 'Juicy burger with cheese and lettuce',
      price: 13.99,
      imageUrl:
          'https://i.pinimg.com/236x/05/d5/d9/05d5d9256d96c346e0b1227e2dddf550.jpg',
    ),
    Dish(
      id: '5',
      name: 'Pineapple Juice',
      description: 'Juicy burger with cheese and lettuce',
      price: 15.99,
      imageUrl:
          'https://i.pinimg.com/236x/f2/8f/e8/f28fe823a1080773d50a17bee3580e21.jpg',
    ),
    Dish(
      id: '6',
      name: 'Mango Smoothie',
      description: 'Juicy burger with cheese and lettuce',
      price: 10.99,
      imageUrl:
          'https://i.pinimg.com/236x/3d/78/a4/3d78a48c8e3aadd0a7a8c4e44235b539.jpg',
    ),
  ];

  Colditemsscreen({super.key});

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
