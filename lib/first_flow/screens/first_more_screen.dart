import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator_flow/first_flow/fragments/first_more_fragment.dart';

class FirstMoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FirstMoreMobileLayout(),
        // child: FirstMoreMobileLayout(onCompletePrevious: onCompletePrevious),
      ),
    );
  }
}
