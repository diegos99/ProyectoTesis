import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery AR Prototype',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.orange,
        primaryColor: Color(0xFFf0e742), // #333333 negro y #f0e742 amarillo
      ),
      home: MyHomePage(), // MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// start ----- Original antes del ejercicio de los botones HOME PAGE
/* class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Inicio"),
        ),
        body: testWidget(),);
  }
} */
// end ----- Original antes del ejercicio de los botones HOME PAGE

// start ----- Para el ejercicio de los botones HOME PAGE
/* class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "";

  void changeText(String text) {
    this.setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
      ),
      body: Column(
          children: <Widget>[testWidgetv2(this.changeText), Text(this.text)]),
    );
  }
} */
// end ----- Para el ejercicio de los botones HOME PAGE

// start ----- Para el ejercicio del ListView HOME PAGE
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
      appBar: AppBar(
        title: Text("Inicio - Restaurantes"),
        elevation: 10,
      ),
      body: ListView.builder(
          itemCount: restaurantNames.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                print(restaurantNames[index]);
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
// end ----- Para el ejercicio del ListView HOME PAGE

// start ----- TEXT WIDGET (Podemos usar este snipett en el body)--> Column(children: <Widget>[TestWidget(),TestWidget()],)
class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Hello world");
  }
}
// end ----- TEXT WIDGET

// start ----- STATEFUL WIDGET - INPUT
class TextInputWidget extends StatefulWidget {
  const TextInputWidget({Key? key}) : super(key: key);

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();
  String text = "";

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void changeText(text) {
    if (text == "Hola") {
      controller.clear();
      text = "";
    }
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
        controller: this.controller,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.drafts), labelText: "escribe algo"),
        onChanged: (text) => changeText(text),
      ),
      Text(this.text)
    ]);
  }
}
// end ----- STATEFUL WIDGET - INPUT

// start ----- STATEFUL WIDGET - INPUT WITH BUTTON
// ignore: camel_case_types
class testWidgetv2 extends StatefulWidget {
  //const testWidgetv2({ Key? key }) : super(key: key);
  final Function(String) callback;
  testWidgetv2(this.callback);

  @override
  _testWidgetv2State createState() => _testWidgetv2State();
}

// ignore: camel_case_types
class _testWidgetv2State extends State<testWidgetv2> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void click() {
    widget.callback(controller.text);
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.controller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.drafts),
          labelText: "escribe algo",
          suffixIcon: IconButton(
            icon: Icon(Icons.send),
            splashColor: Colors.blue,
            tooltip: "Mensaje de envío",
            onPressed: this.click,
          )),
    );
  }
}
// end ----- STATEFUL WIDGET - INPUT WITH BUTTON

// start ----- ListView
class Restaurantes extends StatefulWidget {
  const Restaurantes({Key? key}) : super(key: key);

  @override
  _RestaurantesState createState() => _RestaurantesState();
}

class _RestaurantesState extends State<Restaurantes> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
// end ----- ListView

/* class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
 */