import 'package:flutter/material.dart';

import '../NavigationDrawerWidget.dart';

class EncuestaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(title: Text("Encuesta"),),
    );
  }
}