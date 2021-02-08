import 'package:flutter/material.dart';

class SecondMobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Second screen',
            style: TextStyle(
              fontSize: 32.0,
            ),
          ),
          FlatButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/thirdScreen'),
            },
            child: Text('Flat Button'),
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
