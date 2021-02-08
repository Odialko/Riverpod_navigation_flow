import 'package:flutter/material.dart';

class HomeMobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Home screen',
            style: TextStyle(
              fontSize: 32.0,
            ),
          ),
          FlatButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/firstScreenFlow'),
            },
            child: Text('Flat to FirstScreenFlow Button'),
            color: Colors.yellow,
          ),
          FlatButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/secondScreen'),
            },
            child: Text('Flat to SecondScreen Button'),
            color: Colors.yellow,
          ),
          FlatButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/thirdScreen'),
            },
            child: Text('Flat to ThirdScreen Button'),
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
