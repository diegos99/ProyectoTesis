import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin_example/datos/constants.dart';

import 'detalle.dart';

class ProductosPage extends StatelessWidget {
  //final int index;
  final String restaurante;
  final String imagenes;

  ProductosPage(this.restaurante, this.imagenes) {
    /* print(this.index);
    this.index,  */
    print(this.restaurante);
    print(this.imagenes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: AppBar(
            toolbarHeight: 500,
            backgroundColor: Colors.white,
            elevation: 0,
            title: Image.asset(this.imagenes, height: 250),
          ),
        ),
        /* appBar: AppBar(
          title: Text('$restaurante'),
        ), */
        body: Productos('$restaurante', '$imagenes'));
  }
}

// start ----- ListView HOME PAGE Restaurantes
class Productos extends StatefulWidget {
  final String nombreRestaurante;
  final String pathImagen;
  Productos(this.nombreRestaurante, this.pathImagen) {
    print('TIENEEE:' + this.nombreRestaurante);
  }

  @override
  _ProductosState createState() => _ProductosState();
}

class _ProductosState extends State<Productos> {
  /* var restaurantNames = [
    "China woook",
    "Delicias mexicanas",
    "Antojitos dulces",
    "Burguer Queen",
    "Healthy Fresh"
  ];

  var restaurantDescription = [
    "Lo mejor de la comida china en China Woook...",
    "Restaurante de comida mexicana auténtica...",
    "Pasteles, porciones, manjares y demás...",
    "La mejor hamburguesa solo en Burguer Queen...",
    "Comida saludable para tu bienestar..."
  ];

  var restaurantTiempo = [
    "30 a 50 min",
    "45 min",
    "20 a 30 min",
    "30 min",
    "1 hora"
  ];

  var restaurantImg = [
    "assets/images/comidaItaliana.jpg",
    "assets/images/comidaColombiana.jpg",
    "assets/images/comidaPostre.jpg",
    "assets/images/comidaRapida.jpg",
    "assets/images/comidaSaludable.jpg"
  ]; */

  // ALERT DIALOG
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('¡Alerta!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Pronto nuevos productos a la puerta de tu casa.'),
                Text('Lo mejor está por llegar...'),
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

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;

    return Scaffold(
      body: ListView.builder(
          itemCount: ITALIA_DATA.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                //print(restaurantNames[index]);
                var valor =
                    NombreProds(widget.nombreRestaurante)[index]['platillo'];
                var valor2 =
                    NombreProds(widget.nombreRestaurante)[index]['description'];
                var valor3 =
                    NombreProds(widget.nombreRestaurante)[index]['image'];
                var valor4 =
                    NombreProds(widget.nombreRestaurante)[index]['precio'];
                var valor5 = NombreProds(widget.nombreRestaurante)[index]
                    ['Model3dAsset'];

                if (valor2 != "Lo mejor está por llegar") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetallePage(
                              valor, valor2, valor3, valor5, valor4)));
                } else {
                  _showMyDialog();
                }
              },
              child: Card(
                  child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                        NombreProds(widget.nombreRestaurante)[index]
                            ['image']), //restaurantImg[index]
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          NombreProds(widget.nombreRestaurante)[index]
                              ['platillo'], //restaurantNames[index]
                          style: TextStyle(
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            NombreProds(widget.nombreRestaurante)[index]
                                ['description'],
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[500]),
                          ),
                        ),
                        Container(
                          width: width,
                          child: Text(
                            NombreProds(widget.nombreRestaurante)[index]
                                ['precio'],
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
            );
          }),
    );
  }
}
// end ----- ListView HOME PAGE Restaurantes

NombreProds(String nombre) {
  if (nombre == "Diego's Pizza") {
    return ITALIA_DATA;
  } else if (nombre == 'Colombia Soul') {
    return COLOMBIA_DATA;
  } else if (nombre == 'Burguer Queen') {
    return BURGUER_DATA;
  } else if (nombre == 'Antojitos dulces') {
    return DULCE_DATA;
  } else if (nombre == 'Healthy Fresh') {
    return SALUDABLE_DATA;
  } else if (nombre == "Aldo's") {
    return VINO_DATA;
  }
}
