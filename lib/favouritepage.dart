import 'package:flutter/material.dart';
import 'profile.dart';

// class FavouritePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//       return Container();




ProfileImageList(Profile profile)=>
 Container(
  color: Color(0xfffbc321).withOpacity(0.4),
  child:Padding(
    padding: const EdgeInsets.all(8.0),
  
  child: Column(
    children: <Widget>[
      Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  width: 2.0,
                  color: const Color(0xff4ba2e5),
                ),
              ),
              child: Container(
                width: 100,
                height: 80,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(profile.image),
                  )
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                color: profile.status,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  width: 1.0,
                  color: const Color(0xFFFFFFFF),
                )
              ),
            ),
          )
        ],
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            profile.name,
            style: TextStyle(
              color: Color(0xff002fa8),fontSize: 24.0)),
            ),
          ),
        
      
    ],
  ),
),
);
class FavouritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_left),onPressed: (){},
        // ),
        title: Text("Favourites"),
        actions: <Widget>[
          IconButton(icon: Icon(
            Icons.search
          ),onPressed: (){

          },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child:ListView(
              scrollDirection: Axis.horizontal,
             // children: profiles.map((profile)=>ProfileImageList(profile)).toList(),
            ),
          ),
          //  Expanded(
          //   flex: 2,
          //   child:ListView(
          //     scrollDirection: Axis.horizontal,
          //     children: profiles.map((profile)=>ProfileList(profile)).toList(),
          //   ),
          // ),
        ],
      ),
    );
  }
}
