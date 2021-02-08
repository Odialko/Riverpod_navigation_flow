import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator_flow/first_flow/screens/first_about_screen.dart';
import 'package:flutter_navigator_flow/first_flow/screens/first_articles_screen.dart';
import 'package:flutter_navigator_flow/first_flow/screens/first_more_screen.dart';
import 'package:flutter_riverpod/all.dart';

class FirstScreensFlow extends StatelessWidget {

  Map<String, Widget> routeMap = {
    'firstScreenFlow/firstArticlesScreen': FirstArticlesScreen(),
    'firstScreenFlow/firstAboutScreen': FirstAboutScreen(),
    'firstScreenFlow/firstMoreScreen': FirstMoreScreen(),
  };

  Widget _buildRouteToScreen(String route) {
    // print('=====route ${route}');
    // print('=====routeMap ${routeMap[route]}');
   return routeMap[route];
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: 'firstScreenFlow/firstArticlesScreen',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        builder = (BuildContext _) => _buildRouteToScreen(settings.name);

        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
