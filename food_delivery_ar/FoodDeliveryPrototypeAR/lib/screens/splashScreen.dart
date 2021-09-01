import 'package:arcore_flutter_plugin_example/screens/itemListScreen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: ItemListScreen(),
      title: Text(
        'AR Food Delivery Prototype',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.amberAccent),
      ),
      image: Image.asset('items/icon.png'),
      backgroundColor: Colors.brown,
      photoSize: 180,
      loaderColor: Colors.red,
      loadingText: Text(
        "Prueba de concepto",
        style: TextStyle(color: Colors.pinkAccent, fontSize: 16.0),
      ),
    );
  }
}
