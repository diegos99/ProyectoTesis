
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin_example/navigationItem.dart';


class NavigationProvider extends ChangeNotifier {
  NavigationItem _navigationItem = NavigationItem.homePage;

  NavigationItem get navigationItem => _navigationItem;

  void setNavigationItem(NavigationItem navigationItem) {
    _navigationItem = navigationItem;

    notifyListeners();
  }
}