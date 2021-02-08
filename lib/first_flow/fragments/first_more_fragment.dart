import 'package:flutter/material.dart';

class FirstMoreMobileLayout extends StatelessWidget {
  const FirstMoreMobileLayout({
    this.onCompletePrevious,
  });

  final VoidCallback onCompletePrevious;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '2. First More screen',
            style: TextStyle(
              fontSize: 32.0,
            ),
          ),
          GestureDetector(
            child: FlatButton(
              onPressed: onCompletePrevious,
              child: Text('Go to the begining'),
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
