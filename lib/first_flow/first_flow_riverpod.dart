import 'package:flutter/material.dart';

class FirstFlowRiverpod extends ChangeNotifier {
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