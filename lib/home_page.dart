import 'package:flutter/material.dart';
import 'package:login/components/Horizontal_ListView.dart';
import 'package:login/auth.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:login/pages/posts.dart';
import 'package:login/login_page.dart';
import 'package:login/pages/page.dart';

class HomePage extends StatefulWidget {
  HomePage({this.auth, this.onSignOut});
  final BaseAuth auth;
  final VoidCallback onSignOut;

  @override
  _HomePageState createState() => _HomePageState(auth:auth,onSignOut:onSignOut);
}

class _HomePageState extends State<HomePage> {

  final BaseAuth auth;
  final VoidCallback onSignOut;

  _HomePageState({this.auth, this.onSignOut});



  @override
  Widget build(BuildContext context) {
    void _signOut() async {try {
      await auth.signOut();
      onSignOut();}
    catch (e) {print(e);}
    }

    //main part


    Widget imageSlider = new Container(
      height: 200.0,
      child:new Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/ad1.png'),
          AssetImage('assets/ad2.jpg'),
          AssetImage('assets/ad3.jpg'),
          AssetImage('assets/ad4.png'),

        ],
        autoplay: true,
        showIndicator: false,
        autoplayDuration: Duration(seconds: 12),

      ),
    );
    return Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text("DocsFaces"),
    ),
    endDrawer:
    new Drawer(
    child:
    new ListView(
    children: <Widget>[
    new ListTile(
    title: Text("Appointment", style: new TextStyle(fontSize: 16,color: Colors.black ),),
    trailing: new Icon(Icons.local_hospital),
    onTap: ()=> Navigator.pushReplacement(context,new  MaterialPageRoute(builder: (context) => new HomePage()),),
    ),
    Divider(
    color: Colors.lightBlue,
    height:50.0,
    ),
    new ListTile(
    title: Text("Blogs", style: new TextStyle(fontSize: 16,color: Colors.black ),),
    trailing: new Icon(Icons.assignment),
    onTap: ()=> Navigator.pushReplacement(context,new  MaterialPageRoute(builder: (context) => new HomePage())),
    ),
    Divider(color: Colors.lightBlue,
    height:50.0,),
    new ListTile(
    title: Text("Settings", style: new TextStyle(fontSize: 16,color: Colors.black ),),
    trailing: new Icon(Icons.settings),
    ),
    Divider(color: Colors.lightBlue,
    height:50.0,),
    new ListTile(
    title: Text("Logout", style: new TextStyle(fontSize: 16,color: Colors.black ),),
    trailing: new Icon(Icons.call_made),
    onTap: ()=> _signOut,
    ),
    ],
    ),
    ),
    body: new ListView(
    children: <Widget>[
    imageSlider,
    Padding(padding: const EdgeInsets.all(8.0),
    child: Text('Services',style: TextStyle(color: Colors.white,fontSize:20),),
    ),
    horizontalList()
    ],
    ),
    bottomNavigationBar: new  Container(
    color: Colors.indigoAccent,
    height: 50.0,
    child: new BottomAppBar(
    color: Colors.indigoAccent,
    elevation: 20.0,
    child: new Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
    new IconButton(icon: Icon(Icons.home),iconSize: 35, color: Colors.black, onPressed:(){}),
    new IconButton(icon: Icon(Icons.search),iconSize: 35,color: Colors.black, onPressed:(){}),
    new IconButton(icon: Icon(Icons.add_box),iconSize: 35,color: Colors.black, onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> new posts()));}),
    new IconButton(icon: Icon(Icons.favorite),iconSize: 35,color: Colors.black, onPressed:(){}),
    new IconButton(icon: Icon(Icons.account_circle),iconSize: 35,color: Colors.black, onPressed:(){}),
    ],
    ),
    ),
    ),
    );
  }
}






