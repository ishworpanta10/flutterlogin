import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Page",style: TextStyle(color: Colors.black,fontSize: 20),),
      ),
      body: Center(
        child: Text("This is Menu Page"),
      ),
    );
  }
}