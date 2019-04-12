import 'package:flutter/material.dart';
import 'package:login/pages/page.dart';

class horizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          InkWell(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>new car()));},
            child: Container(
              width: 100.0,
              child: ListTile(
                  title: Image.asset(
                    'assets/icons/posts.png', width: 100.0, height: 80.0,),
                  subtitle: Container(
                    alignment: Alignment.topCenter,
                    child: Text('Posts',
                      style: TextStyle(fontSize: 15.0, color: Colors.white),),
                  )
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 100.0,
              child: ListTile(
                  title: Image.asset(
                    'assets/icons/Appointment.png', width: 100.0, height: 80.0,),
                  subtitle: Container(alignment: Alignment.topCenter,
                    child: Text('Appointment',
                      style: TextStyle(fontSize: 15.0, color: Colors.white),),
                  )
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 100.0,
              child: ListTile(
                  title: Image.asset(
                    'assets/icons/hospital.png', width: 100.0, height: 80.0,),
                  subtitle: Container(alignment: Alignment.topCenter,
                    child: Text('Hospital',
                      style: TextStyle(fontSize: 15.0, color: Colors.white),),
                  )
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 100.0,
              child: ListTile(
                  title: Image.asset(
                    'assets/icons/lab.png', width: 100.0, height: 80.0,),
                  subtitle: Container(
                    alignment: Alignment.topCenter,
                    child: Text('Lab Test',
                      style: TextStyle(fontSize: 15.0, color: Colors.white),),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}