import 'package:flutter/material.dart';

class ThirdMobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Third screen',
            style: TextStyle(
              fontSize: 32.0,
            ),
          ),
          FlatButton(
            onPressed: () => {Navigator.of(context).pop(),},
            child: Text('Flat Button'),
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
