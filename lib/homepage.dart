import 'package:flutter/material.dart';
import 'gallerypage.dart';
import 'listpage.dart';
import 'profilepage.dart';
import 'menupage.dart';
import 'favouritepage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: _buildBody(),
      drawer: Drawer(
        elevation: 5.0,
        child: _buildDrawer(context),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.home),
              SizedBox(width: 10.0,),
              Text("Menu View",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                  
                ),
              ),
              
            ],
          ),
          SizedBox(height: 20.0,),
          
          Text("This is the home page of this application . ",style: TextStyle(color: Colors.black,fontSize: 20),),
          SizedBox(height: 10.0,),
          RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black,fontSize: 20),
              children: [
                TextSpan(text: "This "),
                TextSpan(text: "Application LoginDemo ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                TextSpan(text: "is my first mobile applications. I am using flutter to create this application which support for both ios and android user. And it is created with coordination of my group member. Special thanks to "),
                TextSpan(text: " Miss Sashita Ghimire", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                TextSpan(text: " for helping me to build this application .")
              ]
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20.0,),
          Text("This is a Drawer Button .",style: TextStyle(color: Colors.black,fontSize: 20),),
          SizedBox(height: 20.0,),
          Text("We can use this button to navigate to our drawer directly.",style: TextStyle(color: Colors.black,fontSize: 20),),
          SizedBox(height: 20.0,),
          Text("And thank you all for using this application.",style: TextStyle(color: Colors.black,fontSize: 20),),
          SizedBox(height: 25.0,),




          Builder(
            builder: (BuildContext context) => RaisedButton(
              color: Colors.green,
              child: Text("Open Drawer",style: TextStyle(color: Colors.black,fontSize: 20),),
              onPressed: () => Scaffold.of(context).openDrawer(),
            )
          ),
          
        ],
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.green
          ),
          child: Text("Menu Items",style: TextStyle(fontSize: 30,color: Colors.black),),
        ),//SizedBox(height: 30,),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>HomePage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.menu),
          title: Text("Menu"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>MenuPage() ));
          },
        ),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text("Favorites"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context)=>FavouritePage()
            ));
          },
        ),
        //Divider(),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Profile"),
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>ProfilePage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.list),
          title: Text("List view"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>ListPage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text("Gallery"),
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>GalleryPage()));
          } ,
          onLongPress: (){
            print('Gallery is pressed Long');
          },
        )
      ],
    );
  }
}