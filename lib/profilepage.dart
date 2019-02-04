import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String profile= "assets/ishwor.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
        
      ),
      // body: Container(
      //   height: double.infinity,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage(profile), 
      //       fit: BoxFit.cover
      //     )
      //   ),
       
      // ),
    body: Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage("assets/img11.jpg"), 
                  fit: BoxFit.fill,
                )
              ),
            ),
            SizedBox(
              height: 12.0,
            ),

            Container(
              height: 413,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Center(child: Text("Ishwor Panta",style: TextStyle(fontSize: 45),),
              ),
            )

          ],
        ),
        Positioned(top: 150,
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              width: 4,
              color: Colors.white,
            ),
            image: DecorationImage(image: AssetImage("assets/ishwor.jpg"))

          ),
        ),)
      ],
    ),

    );
  }
}