import 'package:flutter/material.dart';
import 'package:login/auth.dart';
class logout extends StatelessWidget {
  logout({this.auth, this.onSignOut});

  final BaseAuth auth;
  final VoidCallback onSignOut;

  @override
    Widget build(BuildContext context) {
      void _signOut() async {
        try {
          await auth.signOut();
          onSignOut();
        } catch (e) {
          print(e);
        }
      }

      //main part
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('            life is too small , live it healthy ',style: TextStyle(color: Colors.white,fontSize: 25.0,fontStyle: FontStyle.italic), ),
          RaisedButton(
            onPressed:_signOut,
            child: Text('Logout',style: TextStyle(color: Colors.indigoAccent),),
            color: Colors.white,

          ),
        ],

      ),




    );
  }

  }
