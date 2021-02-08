import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator_flow/first_flow/screens/first_about_screen.dart';
import 'package:flutter_navigator_flow/first_flow/screens/first_articles_screen.dart';
import 'package:flutter_navigator_flow/first_flow/screens/first_more_screen.dart';
import 'package:flutter_navigator_flow/first_flow/first_flow_riverpod.dart';
import 'package:flutter_riverpod/all.dart';

class FirstScreensFlow extends StatelessWidget {
  // final Map<String, Widget> routeMap = {
  //   'firstScreenFlow/firstArticlesScreen': FirstArticlesScreen(),
  //   'firstScreenFlow/firstAboutScreen': FirstAboutScreen(),
  //   'firstScreenFlow/firstMoreScreen': FirstMoreScreen(),
  // };

  @override
  Widget build(BuildContext context) {
    final storeStaticValues = context.read(firstFlowRiverpod);
    return ProviderScope(
      child: Consumer(
        builder: (context, watch, child) {

          final firstFlowStore = watch(firstFlowRiverpod);

          return Navigator(
            initialRoute: firstFlowStore.routeMap.keys.toList()[0],
            onGenerateRoute: (RouteSettings settings) {
              return MaterialPageRoute(
                builder: (BuildContext _) => firstFlowStore.routeMap[settings.name],
                settings: settings,
              );
            },
          );
        }
      ),
    );
  }
}
