import 'package:flutter/material.dart';
import 'package:manju_restourent/screens/dish.dart';
import 'package:manju_restourent/screens/dish_item.dart';

class MenuScreen extends StatelessWidget {
  final List<Dish> dishes = [
    Dish(
      id: '1',
      name: 'Pizza',
      description: 'Delicious Italian pasta with tomato sauce',
      price: 12.99,
      imageUrl:
          'https://i.pinimg.com/564x/0a/32/0f/0a320fc445b81f237890248539ceccf7.jpg',
    ),
    Dish(
      id: '2',
      name: 'Burger',
      description: 'Juicy burger with cheese and lettuce',
      price: 10.99,
      imageUrl:
          'https://i.pinimg.com/236x/43/7c/44/437c447768d443d33d9ee3743e87dd08.jpg',
    ),
    Dish(
      id: '3',
      name: 'Pasta',
      description: 'Juicy burger with cheese and lettuce',
      price: 11.99,
      imageUrl:
          'https://i.pinimg.com/236x/8c/4d/88/8c4d88254265b6cc535aea98e9af35f1.jpg',
    ),
    Dish(
      id: '4',
      name: 'Samosa',
      description: 'Juicy burger with cheese and lettuce',
      price: 13.99,
      imageUrl:
          'https://i.pinimg.com/236x/64/16/73/6416733eeda35bf65bfa757d6d4c39c0.jpg',
    ),
    Dish(
      id: '5',
      name: 'Onion Rings',
      description: 'Juicy burger with cheese and lettuce',
      price: 15.99,
      imageUrl:
          'https://i.pinimg.com/236x/74/f8/6c/74f86c8746a7f5f74bd17d5e4bbb1d5b.jpg',
    ),
    Dish(
      id: '6',
      name: 'PanCake',
      description: 'Juicy burger with cheese and lettuce',
      price: 10.99,
      imageUrl:
          'https://i.pinimg.com/236x/37/e3/22/37e322a5c45bbe8bde9e5c74e5a3b839.jpg',
    ),
  ];

  MenuScreen({super.key});

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
