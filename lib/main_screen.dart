import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/sign_In_pro.dart';
import 'package:provider/provider.dart';

import 'drawer.dart';
import 'food.dart';



class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _HomePageState();
}

class _HomePageState extends State<MainScreen> {
  final String name = "exploria";

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPages(),
      drawer: MyDrawer(),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
  Widget buildPages(){
      switch(index){
        case 3:
          return Setting();
        default:
          return Food();


      }
  }
 Widget buildBottomNavigationBar() {
    return BottomNavyBar(
      selectedIndex: index,
      onItemSelected: (index) => setState(() => this.index = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            textAlign: TextAlign.center,
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
        ),
        BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text('User'),
            textAlign: TextAlign.center,
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
        ),
        BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Message'),
            textAlign: TextAlign.center,
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
        ),
        BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Setting'),
            textAlign: TextAlign.center,
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
        )
      ],

    );
 }
}



// class MainScreen extends StatelessWidget {
//   const MainScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Exploria App"),
//       ),
//       body: Center(
//         child: Container(
//           child: Text("Welcome to  SBK"),
//         ),
//       ),
//       drawer: MyDrawer(),
//       // bottomNavigationBar: buildBottomNavigationBar(),
//     );
//   }
//
//  // Widget buildBottomNavigationBar() {
//  //    return BottomNavyBar(
//  //      onItemSelected: (index) => setState(() => this.index = index),
//  //      items: <BottomNavyBarItem>[],
//  //
//  //    );
//  // }
//
// }

