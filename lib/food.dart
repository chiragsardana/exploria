import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class Food extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: MyDrawer(),
    );
  }

}
class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      drawer: MyDrawer(),
    );
  }

}