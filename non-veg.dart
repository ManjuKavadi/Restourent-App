import 'package:flutter/material.dart';
import 'package:manju_restourent/screens/dish.dart';
import 'package:manju_restourent/screens/dish_item.dart';

class NonvegScreen extends StatelessWidget {
  final List<Dish> dishes = [
    Dish(
      id: '1',
      name: 'Chicken Curry',
      description: 'Delicious Italian pasta with tomato sauce',
      price: 12.99,
      imageUrl:
          'https://i.pinimg.com/236x/9f/a3/fb/9fa3fb041dcb9d3166e6e8fdc1996d96.jpg',
    ),
    Dish(
      id: '2',
      name: 'Chicken Tikka Masala ',
      description: 'Juicy burger with cheese and lettuce',
      price: 10.99,
      imageUrl:
          'https://i.pinimg.com/236x/e2/df/51/e2df516072aaf8ba35b725d57fd05a15.jpg',
    ),
    Dish(
      id: '3',
      name: 'Tandoori Chicken',
      description: 'Juicy burger with cheese and lettuce',
      price: 11.99,
      imageUrl:
          'https://i.pinimg.com/236x/a0/cb/e2/a0cbe2c73e1185e727a74e22a782bc97.jpg',
    ),
    Dish(
      id: '4',
      name: 'Butter Chicken (Murgh Makhani)',
      description: 'Juicy burger with cheese and lettuce',
      price: 13.99,
      imageUrl:
          'https://i.pinimg.com/236x/a1/3a/78/a13a7886f907aa0ad07784e87136d7ed.jpg',
    ),
    Dish(
      id: '5',
      name: 'Chicken Tagine',
      description: 'Juicy burger with cheese and lettuce',
      price: 15.99,
      imageUrl:
          'https://i.pinimg.com/236x/2e/f8/a0/2ef8a0a3f9956efcf881c8bcd0d8ca98.jpg',
    ),
    Dish(
      id: '6',
      name: 'Chicken Fried Rice',
      description: 'Juicy burger with cheese and lettuce',
      price: 10.99,
      imageUrl:
          'https://i.pinimg.com/236x/b9/05/91/b905911b80952b75758469c7df50a9d6.jpg',
    ),
  ];

  NonvegScreen({super.key});

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
