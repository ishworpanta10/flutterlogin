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
        child: ListView.builder(
          itemBuilder: (_,int index)=>Eachlist(),
          itemCount: 10,
        ),
      )
    );
  }
}
class Eachlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ,

      
    );
  }
}