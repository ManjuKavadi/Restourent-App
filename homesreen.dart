import 'package:flutter/material.dart';
import 'package:manju_restourent/screens/caterogeries.dart';
// import 'package:manju_restourent/screens/menuscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome to Our Restaurant',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.deepPurple),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 50)),
                Text(
                  "Dev By Manju",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.verified_user,
              size: 35,
            ),
            title: Text("Privacy"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 35,
            ),
            title: Text("Settings"),
            onTap: () {},
          ),
        ],
      )),
      body: CaterogeriesScreen(),

      // body: Center(
      //   child: ElevatedButton(
      //     child: const Text('View Menu'),
      //     onPressed: () {
      //       Navigator.of(context).push(
      //         MaterialPageRoute(builder: (context) => MenuScreen()),
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
