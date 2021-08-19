
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/navigationItem.dart';


class NavigationProvider extends ChangeNotifier {
  NavigationItem _navigationItem = NavigationItem.homePage;

  NavigationItem get navigationItem => _navigationItem;

  void setNavigationItem(NavigationItem navigationItem) {
    _navigationItem = navigationItem;

    notifyListeners();
  }
}