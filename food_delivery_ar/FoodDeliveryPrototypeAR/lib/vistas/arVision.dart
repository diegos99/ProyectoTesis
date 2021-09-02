import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';

class Object3D extends StatefulWidget {
  String NombreProducto;
  String Model3dAsset;
  Object3D(this.NombreProducto, this.Model3dAsset){
    //print('El producto es: ' +this.Model3dAsset);
  }

  @override
  _Object3DState createState() => _Object3DState();
}

class _Object3DState extends State<Object3D> {
  ArCoreController arCoreController;
  String objectSelected;

  void whenArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    arCoreController.onNodeTap = (name) => removeObject(name);
    arCoreController.onPlaneTap = handleOnPlaneTap;
  }

  void handleOnPlaneTap(List<ArCoreHitTestResult> hits) {
    final hit = hits.first;
    addObject(hit);
  }

  void removeObject(String name) {
    showDialog(
        context: context,
        builder: (BuildContext c) => AlertDialog(
              content: Row(
                children: <Widget>[
                  //Text("Remove object"), //+ name
                  TextButton(
                      onPressed: () {
                        arCoreController.removeNode(nodeName: name);
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Eleminar elemento",
                        style: TextStyle(color: Colors.red),
                      )),
                  /* IconButton(
                      onPressed: () {
                        arCoreController.removeNode(nodeName: name);
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.delete)) */
                ],
              ),
            ));
  }

  void addObject(ArCoreHitTestResult plane) {
    /* if (objectSelected != null) { */
    final objectNode = ArCoreReferenceNode(
      name: widget.Model3dAsset,//objectSelected,
      object3DFileName: widget.Model3dAsset,//objectSelected,
      position: plane.pose.translation,
      rotation: plane.pose.rotation,
    );
    arCoreController.addArCoreNodeWithAnchor(objectNode);

    /* } else {
      showDialog(
          context: context,
          builder: (BuildContext c) => AlertDialog(
                content: Text("Select an image"),
              ));
    } */
  }

  @override
  void dispose() {
    super.dispose();
    arCoreController.dispose();
  }

  /* List<String> objectFileName = ["Fries.sfb"]; */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.NombreProducto), // NOMBRE DEL APPBAR
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          ArCoreView(
            onArCoreViewCreated: whenArCoreViewCreated,
            enableTapRecognizer: true,
          )
          /* Align(
            alignment: Alignment.topLeft,
            child: ListObjectSelection(
              onTap: (value) {
                objectSelected = value;
              },
            ),
          ) */
        ],
      ),
    );
  }
}

// ui
/* class ListObjectSelection extends StatefulWidget {
  final Function onTap;

  ListObjectSelection({this.onTap});

  @override
  _ListObjectSelectionState createState() => _ListObjectSelectionState();
}

class _ListObjectSelectionState extends State<ListObjectSelection> {
  List<String> gifs = [
    "assets/images/flecha.gif",
  ];

  List<String> objectFileName = ["Fries.sfb"];
  String selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
          itemCount: gifs.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selected = gifs[index];
                  widget.onTap(objectFileName[index]);
                });
              },
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Container(
                  color:
                      selected == gifs[index] ? Colors.red : Colors.transparent,
                  padding: selected == gifs[index] ? EdgeInsets.all(8.0) : null,
                  child: Image.asset(gifs[index]),
                ),
              ),
            );
          }),
    );
  }
}
 */