import 'package:flutter/material.dart';
import 'package:login/home_page.dart';
class posts extends StatefulWidget {
  @override
  _postsState createState() => _postsState();
}

class _postsState extends State<posts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.indigoAccent,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,), onPressed:()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> new HomePage())),
          ),
        title: Text('New Posts',style: TextStyle(color: Colors.white),),
        actions: <Widget>[
          FlatButton(
            onPressed: (){},
            child: Text('Share',style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          TextField(decoration: InputDecoration(labelText:'Enter Text =>'),
          style: TextStyle(fontSize: 20.0),),
          Padding(padding: const EdgeInsets.all(20)),
          FlatButton(
            onPressed: (){},
            child: Text('CLick Button To Upload Images =>',style: TextStyle(fontSize: 20.0,color: Colors.lightBlue)),
          ),
        ],
      ),
    );
  }
}
