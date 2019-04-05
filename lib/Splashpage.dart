import 'package:flutter/material.dart';
import 'package:login/root_page.dart';
import 'package:login/auth.dart';
import 'dart:async';
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), () =>  Navigator.pushReplacement(context,
      new MaterialPageRoute(builder: (context) => new RootPage(auth: new Auth())),
    )
    );
  }
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
         new Container(
            decoration: BoxDecoration(color: Colors.black),
          ),
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              child: Text("DocsFaces",style: TextStyle(color: Colors.black,fontSize: 30.0),),
              backgroundColor: Colors.indigo,
              radius: 100.0,
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text("Explore  .  Visit  .  Post",style: TextStyle(color: Colors.indigo,fontSize: 25.0),)

          ],
          )
        ],
      )
    );
  }
}
