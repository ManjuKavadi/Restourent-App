import 'package:flutter/material.dart';
import 'package:manju_restourent/screens/coldItemsScreen.dart';
import 'package:manju_restourent/screens/menuscreen.dart';
import 'package:manju_restourent/screens/non-veg.dart';
import 'package:manju_restourent/screens/vegscreen.dart';

class CaterogeriesScreen extends StatelessWidget {
  const CaterogeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => NonvegScreen()),
                        );
                      },
                      child: Text(
                        "NON-VEG",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Vegscreen()),
                        );
                      },
                      child: Text(
                        "VEG",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MenuScreen()),
                        );
                      },
                      child: Text(
                        "FAST FOOD",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Colditemsscreen()),
                        );
                      },
                      child: Text(
                        "COLD ITEMS",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
