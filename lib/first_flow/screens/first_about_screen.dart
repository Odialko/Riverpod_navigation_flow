import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator_flow/first_flow/fragments/first_about_fragment.dart';

class FirstAboutScreen extends StatelessWidget {
  // const FirstAboutScreen({
  //   this.onCompletePrevious,
  // });
  //
  // final VoidCallback onCompletePrevious;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FirstAboutMobileLayout(),
        // child: FirstAboutMobileLayout(onCompletePrevious: onCompletePrevious),
      ),
    );
  }
}
