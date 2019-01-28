import 'package:flutter/material.dart';
import 'homepage.dart';
class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: Container(
        
       width: 120,
        height: 120,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/ishwor.jpg")
        )
        ),

      ),
    
      
    );
  }
}