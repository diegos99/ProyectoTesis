import 'package:flutter/material.dart';

import 'NavigationDrawerWidget.dart';

class EncuestaPage extends StatelessWidget {
  const EncuestaPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(title: Text("Encuesta"),),
    );
  }
}