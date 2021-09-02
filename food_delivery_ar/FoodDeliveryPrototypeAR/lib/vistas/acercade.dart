import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../NavigationDrawerWidget.dart';

class AcercaDePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Acerca de la aplicación"),
      ),
      body: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset(
                  'assets/images/aboutUs.webp',
                  height: 200,
                ),
              ),
              Container(
                  child: Text(
                    'Esta app es un prototipo realizado para mi proyecto de graduación únicamente para fines de investigación. Durante el uso de la aplicación no se solicitará ningún dato personal o de pago, únicamente es para probar el módulo de Realidad Aumenda y visualizar los diversos productos en esta tecnología. \n',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18, height: 1.5),
              )),
              Container(
                child: new InkWell(
                    child: new Text(
                      'Para ver el código fuente visita el repositorio en github',
                      style: TextStyle(fontSize: 18, height: 1.5, color: Colors.yellow[900], fontStyle: FontStyle.italic),
                    ),
                    onTap: () =>
                        launch('https://github.com/diegos99/ProyectoTesis')),
              ),
            ],
          )),
    );
  }
}
