import 'package:flutter/material.dart';

class ProductosPage extends StatelessWidget {
  final int index;
  final String restaurante;
  final String imagenes;

  ProductosPage(this.index, this.restaurante, this.imagenes) {
    print(this.index);
    print(this.restaurante);
    print(this.imagenes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$restaurante'),
        ),
        body: Container(
          decoration: ShapeDecoration(
              image: DecorationImage(
                  image: AssetImage(this.imagenes), fit: BoxFit.fitHeight),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(20))),
          width: double.maxFinite,
          height: 300,
          child: Align(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Container decoration implements rounded corners (radius = 20)",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            alignment: Alignment.bottomCenter,
          ),
        ));
  }
}

class Hola extends StatelessWidget {
  const Hola({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("fgdsfdfsdfsdfsdfdsfsdfsd")
    );
  }
}