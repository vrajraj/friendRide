import 'package:flutter/material.dart';
class request extends StatefulWidget {
  @override
  _requestState createState() => _requestState();
}

class _requestState extends State<request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],

        appBar: AppBar(

          title: Text('Friends Available',style: TextStyle(color: Colors.white,fontSize: 20.0),),
          backgroundColor: Colors.green[600],
        ),
        body:
        Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.only(left: 16,right: 16,top: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
              color: Colors.white70,
              child: ListTile(

                title: Text('vrajraj gohil',style: TextStyle(color: Colors.black,fontSize: 20.0),),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/Photo from Vrajraj Gohil.jpg"),
                  radius: 25,
                ),
              ),

            ),
            Card(
              margin: EdgeInsets.only(left: 16,right: 16,top: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
              color: Colors.white70,
              child: ListTile(

                title: Text('Bupendra kaba',style: TextStyle(color: Colors.black,fontSize: 20.0),),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/IMG20190423163553.jpg"),
                  radius: 25,
                ),
              ),

            ),

          ],
        )
    );
  }
}
