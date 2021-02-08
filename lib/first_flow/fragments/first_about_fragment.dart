import 'package:flutter/material.dart';

class FirstAboutMobileLayout extends StatelessWidget {
  // const FirstAboutMobileLayout({
  //   this.onCompletePrevious,
  // });
  //
  // final VoidCallback onCompletePrevious;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '2. First About screen',
            style: TextStyle(
              fontSize: 32.0,
            ),
          ),
          GestureDetector(
            child: FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed('firstScreenFlow/firstMoreScreen');
              },
              child: Text('Go to MoreScreen'),
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
