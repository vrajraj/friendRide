import 'package:flutter/material.dart';
import 'package:login/send.dart';
class friends extends StatefulWidget {
  @override
  _friendsState createState() => _friendsState();
}

class _friendsState extends State<friends> {
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
              onTap: ()=>Navigator.push(context,new  MaterialPageRoute(builder: (context) => new send()),),
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
              onTap: ()=>Navigator.push(context,new  MaterialPageRoute(builder: (context) => new send()),),
              title: Text('Bupendra kaba',style: TextStyle(color: Colors.black,fontSize: 20.0),),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/IMG20190423163553.jpg"),
                radius: 25,
              ),
            ),

          ),
          Card(
            margin: EdgeInsets.only(left: 16,right: 16,top: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
            color: Colors.white70,
            child: ListTile(
              onTap: ()=>Navigator.push(context,new  MaterialPageRoute(builder: (context) => new send()),),
              title: Text('krupa gohil',style: TextStyle(color: Colors.black,fontSize: 20.0),),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/IMG-20190624-WA0014.jpg"),
                radius: 25,
              ),
            ),

          ),
          Card(
            margin: EdgeInsets.only(left: 16,right: 16,top: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
            color: Colors.white70,
            child: ListTile(
              onTap: ()=>Navigator.push(context,new  MaterialPageRoute(builder: (context) => new send()),),
              title: Text('nidhi paul',style: TextStyle(color: Colors.black,fontSize: 20.0),),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/ad3.jpg"),
                radius: 25,
              ),
            ),

          ),
          Card(
            margin: EdgeInsets.only(left: 16,right: 16,top: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
            color: Colors.white70,
            child: ListTile(
              title: Text('vrajraj gohil',style: TextStyle(color: Colors.black,fontSize: 20.0),),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/ad3.jpg"),
                radius: 25,
              ),
            ),

          ),
          Padding(padding: EdgeInsets.all(10.0)),

        ],
      )
      /*Container(
        
color: Colors.black,
        margin: EdgeInsets.all(40.0),
        height: 800.0,
        child: Center(
          child:ListView(
            children: <Widget>[
              ListTile(

                title: Column(

                  children: <Widget>[
                    ListTile(
                      title: Text("Vrajraj gohil",style: TextStyle(color: Colors.white),),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/ad3.jpg"),
                      ),
                      contentPadding: EdgeInsets.all(10.0),

                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    ListTile(
                      title: Text("Kajal rajput",style: TextStyle(color: Colors.white)),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/ad3.jpg"),
                      ),
                      contentPadding: EdgeInsets.all(10.0),

                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    ListTile(
                      title: Text("Raj kumar",style: TextStyle(color: Colors.white)),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/ad3.jpg"),
                      ),
                      contentPadding: EdgeInsets.all(10.0),

                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    ListTile(
                      title: Text("vivek patel",style: TextStyle(color: Colors.white)),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/ad3.jpg"),
                      ),
                      contentPadding: EdgeInsets.all(10.0),

                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    ListTile(
                      title: Text("krupa gohil",style: TextStyle(color: Colors.white)),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/ad3.jpg"),
                      ),
                      contentPadding: EdgeInsets.all(10.0),

                    ),
                    Padding(padding: EdgeInsets.all(10.0)),

                    

                  ],
                ),
              )
            ],
          )
        ),*/

    );
  }
}
