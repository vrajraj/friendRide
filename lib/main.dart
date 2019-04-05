import 'package:flutter/material.dart';
import 'package:login/Splashpage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash() // new RootPage(auth: new Auth()),
    );
  }
}
