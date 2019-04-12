import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:login/home_page.dart';
class feed extends StatefulWidget {
  @override
  _feedState createState() => _feedState();
}

class _feedState extends State<feed> {
  @override
  Widget build(BuildContext context) {
    Widget imageSlider = new Container(
      height: 200.0,
      child:new Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/a1.jpg'),
          AssetImage('assets/a2.jpg'),
          AssetImage('assets/a3.jpg'),
        ],
        autoplay: false,
        showIndicator: true,
        autoplayDuration: Duration(seconds: 10),
        dotIncreaseSize: 1.0,
        indicatorBgPadding: 2.0,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,), onPressed:()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> new HomePage())),
        ),
        title: Text('Posts',style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                child: Image.asset('assets/atul.jpg',fit: BoxFit.fill,),
                radius: 30.0,
              ),
              Padding(padding: const EdgeInsets.all(5)),
              Text('Atul mehta'),
            ],
          ),

          imageSlider,
          Text('hello my self atul,i have confirmed Here best cancer treatment is given,Doctor are well experienced'),
          Text('hospital: Goraj cancer hospital & research centre'),
         Row(
           children: <Widget>[
             IconButton(icon: Icon(Icons.favorite_border,color:Colors.red,),onPressed: (){}),
             IconButton(icon: Icon(Icons.comment,color:Colors.black,),onPressed: (){}),
             IconButton(icon: Icon(Icons.send,color:Colors.blue,),onPressed: (){}),
           ],
         ),
          Padding(padding: const EdgeInsets.all(5)),
        ],
    )
    );
  }
}
