import 'package:flutter/material.dart';
import 'gallerypage.dart';
import 'listpage.dart';
import 'profilepage.dart';

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
              )
            ],
          ),
          SizedBox(height: 20.0,),
          




          Builder(
            builder: (BuildContext context) => RaisedButton(
              color: Colors.green,
              child: Text("Open Drawer"),
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
          leading: Icon(Icons.restaurant_menu),
          title: Text("Menu"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text("Favorites"),
          onTap: (){},
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