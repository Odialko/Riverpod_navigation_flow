import 'package:flutter/material.dart';
import 'package:flutter_navigator_flow/first_flow/fragments/first_articles_fragment.dart';

class FirstArticlesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FirstArticlesMobileLayout(),
      ),
    );
  }
}
