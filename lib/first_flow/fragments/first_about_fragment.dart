import 'package:flutter/material.dart';
import 'package:flutter_navigator_flow/first_flow/first_flow_riverpod.dart';
import 'package:hooks_riverpod/all.dart';

class FirstAboutMobileLayout extends StatelessWidget {

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
              'First About screen',
              style: TextStyle(
                fontSize: 32.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Consumer(
              builder: (context, watch, child) {
                final text = watch(firstFlowRiverpod);
                return Text(
                  'Text from the previous screen: ${text.myName}',
                  style: TextStyle(
                    fontSize: 32.0,
                  ),
                );
              },
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
