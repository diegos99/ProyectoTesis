import 'package:flutter/material.dart';

import 'NavigationDrawerWidget.dart';

class DetallePage extends StatelessWidget {
  const DetallePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(title: Text("Nombre platillo"),),
    );
  }
}