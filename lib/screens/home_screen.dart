import 'package:flutter/material.dart';
import 'package:flutter_navigator_flow/fragments/home_fragment.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HomeMobileLayout(),
      ),
    );
  }
}
