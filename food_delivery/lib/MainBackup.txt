import 'package:flutter/material.dart';
import 'package:food_delivery/navigationDrawerWidget.dart';
import 'package:food_delivery/navigationProvider.dart';
import 'package:food_delivery/productos.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery AR Prototype',
      theme: ThemeData(
        //primarySwatch: Colors.orange,
        primaryColor: Color(0xFFf0e742), // #333333 negro y #f0e742 amarillo
      ),
      home: MyHomePage(), // MyHomePage(title: 'Flutter Demo Home Page'),
    ));
  }
}

// start ----- ListView HOME PAGE Restaurantes
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var restaurantNames = [
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
    "assets/images/comidaChina.jpg",
    "assets/images/comidaMexicana.jpg",
    "assets/images/comidaPostre.jpg",
    "assets/images/comidaRapida.jpg",
    "assets/images/comidaSaludable.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;

    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Inicio - Restaurantes"),
        elevation: 10,
      ),
      body: ListView.builder(
          itemCount: restaurantNames.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                //print(restaurantNames[index]);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductosPage(index, restaurantNames[index], restaurantImg[index])));
              },
              child: Card(
                  child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(restaurantImg[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          restaurantNames[index],
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
                            restaurantDescription[index],
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[500]),
                          ),
                        ),
                        Container(
                          width: width,
                          child: Text(
                            restaurantTiempo[index],
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
