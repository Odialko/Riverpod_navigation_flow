import 'package:flutter/material.dart';
import 'package:flutter_navigator_flow/first_flow/first_flow_riverpod.dart';
import 'package:flutter_riverpod/all.dart';

class FirstMoreMobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final storeStaticValues = context.read(firstFlowRiverpod);
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
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              'CurrentScreenIndex: ${storeStaticValues.currentScreenIndex}',
              style: TextStyle(
                fontSize: 32.0,
              ),
            ),
          ),
          GestureDetector(
            child: FlatButton(
              onPressed: () {
                //TODO: Make it like in the NCBA (abstract class)
                // Navigator.pushReplacementNamed(context, '/');
                // Navigator.pushNamed(context, '/');
                // Navigator.of(context).popUntil((route) => route.isFirst);
                // Navigator.pop(context);
                // Navigator.of(context).popUntil(ModalRoute.withName(
                //     '/'
                // ));
                // Navigator.of(context).pushNamed(
                //   storeStaticValues.nextPage(
                //     screenIndex: storeStaticValues.currentScreenIndex,
                //   ),
                // );
              },
              child: Text('Go to the begining'),
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
