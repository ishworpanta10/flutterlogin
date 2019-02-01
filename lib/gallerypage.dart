import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {

List<Container>GalleryPhotos = List();


var photo =[
  {"name":"Swyambunath 2074","image":"01.jpg"},
   {"name":"Collegemate","image":"02.jpg"},
   {"name":"Classmate","image":"03.jpg"},
    
  ];
  
  _imagelist()async{
    for (var i = 0; i < photo.length; i++) {
      final photos = photo[i];
      final String image =photos["image"];

      GalleryPhotos.add(
        Container(
          padding: EdgeInsets.all(5.0), 
          child: Card(
            child: Column(
              children: <Widget>[

                  // Hero(
                  //   tag: photos['name'],
                  //   child: Material(
                  //   child: InkWell(
                  //     child: Image.asset("assets/$image",fit: BoxFit.cover,),
                  //   ),
                  // ),),

                Image.asset("assets/$image",fit: BoxFit.cover,),
                Padding(padding: EdgeInsets.all(10.0),),

              Text(photos["name"],style:TextStyle(fontSize: 20.0 ),textAlign: TextAlign.center,),
             // Raised Button icon
              RaisedButton.icon(
            icon: Icon(Icons.add_a_photo),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context)=>GalleryPage(),
              ));
            },
            label: Text('Add Photo'),
          ),
              ],
              
            ),
          
          )
        )
      );
    }
  }

    @override
  void initState() {
    _imagelist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery ",style: TextStyle(fontSize: 20,color: Colors.white),),

      ),
      
      body: ListView(
        // crossAxisCount: 1,
      
        children: GalleryPhotos,
      ),
    );
  }
}