import 'package:flutter/material.dart';
import 'package:flutter_navigator_flow/screens/home_screen.dart';
import 'package:flutter_navigator_flow/screens/second_screen.dart';
import 'package:flutter_navigator_flow/screens/third_screen.dart';
import 'package:flutter_riverpod/all.dart';

import 'first_flow/first_screens_flow.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/': (BuildContext context) => HomeScreen(),
        '/firstScreenFlow': (BuildContext context) => ProviderScope(
          child: FirstScreensFlow(),
        ),
        '/secondScreen': (BuildContext context) => SecondScreen(),
        '/thirdScreen': (BuildContext context) => ThirdScreen(),
      },
      // home: ScreensFlow(),
    );
  }
}
