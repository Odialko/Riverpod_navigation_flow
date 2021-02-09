import 'package:flutter/material.dart';
import 'package:flutter_navigator_flow/first_flow/screens/first_about_screen.dart';
import 'package:flutter_navigator_flow/first_flow/screens/first_articles_screen.dart';
import 'package:flutter_navigator_flow/first_flow/screens/first_more_screen.dart';
import 'package:hooks_riverpod/all.dart';

final firstFlowRiverpod =
  ChangeNotifierProvider((ref) => FirstFlowRiverpod());

class FirstFlowRiverpod extends ChangeNotifier {
  final Map<String, Widget> _routeMap = {
    // '/': HomeScreen(),
    'firstScreenFlow/firstArticlesScreen': FirstArticlesScreen(),
    'firstScreenFlow/firstAboutScreen': FirstAboutScreen(),
    'firstScreenFlow/firstMoreScreen': FirstMoreScreen(),
    // '/firstScreenFlow': FirstScreensFlow(),
  };
  Map<String, Widget> get routeMap => _routeMap;

  int _currentScreenIndex = 0;
  int get currentScreenIndex => _currentScreenIndex;

  String nextPage({int screenIndex}) {
    _currentScreenIndex++;
    if(_currentScreenIndex == _routeMap.length) {
      _currentScreenIndex = 0;
    }
    return routeMap.keys.toList()[currentScreenIndex];
  }


  String _greeting = 'Hello Riverpod';
  String get greeting => _greeting;

  String _myName = '';
  String get myName => _myName;
  set setName(String val) {
    _myName = val;
    notifyListeners();
  }

  int _value = 0;
  int get value => _value;

  void increment() {
    _value++;
    notifyListeners();
  }
}