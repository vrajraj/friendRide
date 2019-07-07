import 'package:flutter/material.dart';
import 'package:login/request.dart';
import 'package:login/components/Horizontal_ListView.dart';
import 'package:login/auth.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:login/pages/posts.dart';
import 'package:login/pages/page.dart';
import 'package:login/pages/friends.dart';

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


       return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text("FriendRide",style: TextStyle(color: Colors.white),),
    ),
    endDrawer:
    new Drawer(

    child:
    new ListView(
    children: <Widget>[
    new ListTile(
    title: Text("Friends", style: new TextStyle(fontSize: 16,color: Colors.black ),),
    trailing: new Icon(Icons.local_hospital),
    onTap: ()=> Navigator.push(context,new  MaterialPageRoute(builder: (context) => new friends()),),
    ),
       Divider(color: Colors.lightBlue,
    height:50.0,),
    new ListTile(
      onTap: ()=> Navigator.push(context,new  MaterialPageRoute(builder: (context) => new request()),),
    title: Text("Request", style: new TextStyle(fontSize: 16,color: Colors.black ),),
    trailing: new Icon(Icons.settings),
    ),
    Divider(color: Colors.lightBlue,
    height:50.0,),
    InkWell(onTap:_signOut,child:ListTile(
      title: Text("Logout", style: new TextStyle(fontSize: 16,color: Colors.black ),),
      trailing: new Icon(Icons.call_made),
    ), ),
    ],
    ),
    ),
    body:
    Card(
      color: Colors.white70,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
      margin: EdgeInsets.only(top: 80,
      right: 45,left: 45,bottom: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child:
              Column(
                children: <Widget>[
                  Text('Want a Ride ?',style: TextStyle(color: Colors.black54,fontSize: 40.0)),
                Padding(padding: EdgeInsets.all(5.0)),
                  RaisedButton(
                    onPressed:()=> Navigator.push(context,new  MaterialPageRoute(builder: (context) => new friends()),),
                      color: Colors.grey[900],
                    child: Text('Lets Ride',style: TextStyle(color: Colors.white70,fontSize: 50.0),),
                  )
                ],

              ),

          )
        ],
      ),
    )

    
    );
  }
}






