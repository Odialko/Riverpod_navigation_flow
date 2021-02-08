import 'package:flutter/material.dart';
import 'package:flutter_navigator_flow/fragments/second_fragment.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: theme.colors.white,
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: theme.colors.white,
      //   leading: InkWell(
      //     borderRadius: BorderRadius.circular(iconBoxRadius),
      //     onTap: () {
      //       paymentsFlowStore.changeScreen(
      //           screenIndex: paymentsFlowStore.currentScreenIndex,
      //           nextScreen: false);
      //     },
      //     child: Icon(
      //       Icons.arrow_back,
      //       size: iconSize,
      //       color: theme.colors.cocoa,
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: SecondMobileLayout(),
      ),
    );
  }
}
