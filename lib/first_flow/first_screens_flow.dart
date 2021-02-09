import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator_flow/first_flow/first_flow_riverpod.dart';
import 'package:flutter_riverpod/all.dart';

class FirstScreensFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Consumer(
        builder: (context, watch, child) {

          final firstFlowStore = watch(firstFlowRiverpod);

          return Navigator(
            initialRoute: firstFlowStore.routeMap.keys.toList()[0],
            onGenerateRoute: (RouteSettings settings) {
              print('==============${settings}');
              return MaterialPageRoute(
                builder: (BuildContext context) => firstFlowStore.routeMap[settings.name],
                settings: settings,
              );
            },
          );
        }
      ),
    );
  }
}
