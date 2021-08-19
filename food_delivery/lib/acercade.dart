import 'package:flutter/material.dart';

import 'NavigationDrawerWidget.dart';

class AcercaDePage extends StatelessWidget {
  const AcercaDePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(title: Text("Acerca de la aplicación"),),
    );
  }
}