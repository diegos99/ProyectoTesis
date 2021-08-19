import 'package:flutter/material.dart';
import 'package:food_delivery/acercade.dart';
import 'package:food_delivery/detalle.dart';
import 'package:food_delivery/main.dart';
import 'package:food_delivery/navigationItem.dart';
import 'package:food_delivery/navigationProvider.dart';
import 'package:food_delivery/user.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationDrawerWidget extends StatelessWidget {
  static final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) => Drawer(
        child: Container(
          color: Color.fromRGBO(246, 246, 234, 60),
          child: ListView(
            children: <Widget>[
              buildHeader(context,
                  urlImage: urlImage, name: name, email: email),
              Container(
                  padding: padding,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      buildMenuItem(context,
                          item: NavigationItem.homePage,
                          text: 'Restaurantes',
                          icon: Icons.storefront),
                      const SizedBox(
                        height: 24,
                      ),
                      buildMenuItem(context,
                          item: NavigationItem.encuesta,
                          text: 'Encuesta',
                          icon: Icons.poll),
                      /* const SizedBox(height: 24,),
                      Divider(color: Colors.yellow), */
                      const SizedBox(
                        height: 24,
                      ),
                      buildMenuItem(context,
                          item: NavigationItem.acercaDe,
                          text: 'Acerca de',
                          icon: Icons.info),
                    ],
                  ))
            ],
          ),
        ),
      );

  Widget buildMenuItem(
    BuildContext context, {
    required NavigationItem item,
    required String text,
    required IconData icon,
  }) {
    final provider = Provider.of<NavigationProvider>(context);
    final currentItem = provider.navigationItem;
    final isSelected = item == currentItem;

    final color = Colors.black;

    return Material(
        color: Colors.transparent,
        child: ListTile(
          selected: isSelected,
          selectedTileColor: Color(0xFFF2EF91),
          leading: Icon(
            icon,
            color: color,
          ),
          title: Text(
            text,
            style: TextStyle(color: color, fontSize: 18),
          ),
          onTap: () => selectItem(context, item),
        ));
  }
  
  void selectItem(BuildContext context, NavigationItem item) {
    final provider = Provider.of<NavigationProvider>(context, listen: false);
    provider.setNavigationItem(item);
    if (item == NavigationItem.homePage) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
    } else if (item == NavigationItem.encuesta) {
      launch('https://docs.google.com/forms/d/e/1FAIpQLSef7-efm2yfmZKPRH-L70tKXbRTO77vojiExRtuLpFvYsYZbA/viewform?usp=sf_link');
    } else if (item == NavigationItem.acercaDe) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AcercaDePage()));
    }
  }

  Widget buildHeader(
    BuildContext context, {
    required String urlImage,
    required String name,
    required String email,
  }) =>
      Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => selectItem(context, NavigationItem.homePage),
          child: Container(
            padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
            child: Row(
              children: [
                CircleAvatar(
                    radius: 30, backgroundColor: Color(0xFFf15e4e),child: Icon(Icons.person, color: Colors.white, size: 45.0,),),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      email,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
                /* Spacer(),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                  child: Icon(Icons.settings, color: Colors.white),
                ) */
              ],
            ),
          ),
        ),
      );
}
