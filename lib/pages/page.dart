import 'package:flutter/material.dart';
class car extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Category(
            image_location: 'assets/icons/Appointment.png',
            image_caption:'Appointment',


          ),
          Category(
              image_location: 'assets/icons/hospital.png',
              image_caption:'Hospitals'
          ),
          Category(
              image_location: 'assets/icons/posts.png',
              image_caption:'posts'
          ),
          Category(
              image_location: 'assets/icons/lab.png',
              image_caption:'Lab Test'
          ),
          Category(
              image_location: 'assets/icons/lab.png',
              image_caption:'Lab Test'
          ),
        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  final Navigator route;
  Category({
    this.image_location ,
    this.image_caption,
    this.route
  });
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
        child: InkWell(
          onTap: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context)=> route ));
          },
          child: Container(
            width: 100.0,
            child: ListTile(
                title: Image.asset(image_location,width: 100.0,height: 80.0,),
                subtitle: Container(
                  alignment: Alignment.topCenter,
                  child: Text(image_caption,style: TextStyle(fontSize: 15.0,color: Colors.white),),
                )
            ),
          ),
        )
    );
  }
}
