import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String profile= "assets/ishwor.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
        
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(profile), 
            fit: BoxFit.cover
          )
        ),
       
      ),
    );
  }
}