//import 'package:arcore_flutter_plugin_example/screens/arViewScreen.dart';
import 'package:arcore_flutter_plugin_example/vistas/arVision.dart';
import 'package:flutter/material.dart';

class DetallePage extends StatelessWidget {
  final String producto;
  final String description;
  final String pathImagen;
  final String Model3dAsset;
  final String precio;

  DetallePage(this.producto, this.description, this.pathImagen, this.Model3dAsset, this.precio) {
    print(this.precio);
    print(this.producto);
    print(this.description);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$producto"),
      ),
      body: Detalle(
          this.producto, this.description, this.pathImagen, this.Model3dAsset, this.precio),
    );
  }
}

class Detalle extends StatelessWidget {
  final String producto;
  final String description;
  final String pathImagen;
  final String Model3dAsset;
  final String precio;

  Detalle(this.producto, this.description, this.pathImagen, this.Model3dAsset, this.precio) {
    print('HOOOLA' + this.pathImagen);
  }

  @override
  Widget build(BuildContext context) {
// ALERT DIALOG 1
    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            //backgroundColor: Colors.transparent,
            title: const Text('¡Alerta!'),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text(
                      'Por el momento el prototipo no agrega productos al carrito.'),
                  Text('Gracias por su comprensión.'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    // DIALOG 2
    // This is a block of Model Dialog
    showDialogFunc(context) {
      return showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                ),
                padding: EdgeInsets.all(15),
                height: 400,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new InkWell(
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              'assets/images/mano.gif',
                              width: 200,
                              height: 150,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Presiona la imagen',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFFffd800),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            // width: 200,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'para ver el producto en Realidad Aumentada',
                                maxLines: 3,
                                style:
                                    TextStyle(fontSize: 17, color: Color(0xFFffd800), fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                      onTap: (){
                         Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Object3D(this.producto, this.Model3dAsset)));
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }
    Future.delayed(Duration.zero,()=>showDialogFunc(context));
    return Container(
        child: SingleChildScrollView(
      child: Column(children: <Widget>[
        new InkWell(
          child: Column(
            children: <Widget>[
              Image.asset(this.pathImagen),
            ],
          ),
          onTap:(){Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context)=> Object3D(this.producto, this.Model3dAsset)));} //ARViewScreen(itemImg: this.Model3dAsset,)
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Text(
            this.description,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 18, height: 1.5),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Text(
            'Precio: ' + this.precio,
            textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 18,
                height: 1.5,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ),
        Text('\n\n'),
        Padding(
            padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
            child: FlatButton(
              onPressed: () => {
                _showMyDialog()
              },
              color: Color(0xFFf0e742),
              //minWidth: 100,
              padding: EdgeInsets.fromLTRB(30, 20, 40, 20),
              child: Row(
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(Icons.shopping_cart),
                  Text(" Agregar a la orden")
                ],
              ),
            )),
      ]),
    ));
  }
}
