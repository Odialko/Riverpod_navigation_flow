import 'package:flutter/material.dart';

class FirstMoreMobileLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              'First More screen',
              style: TextStyle(
                fontSize: 32.0,
              ),
            ),
          ),
          GestureDetector(
            child: FlatButton(
              onPressed: () => {},
              child: Text('Go to the begining'),
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
