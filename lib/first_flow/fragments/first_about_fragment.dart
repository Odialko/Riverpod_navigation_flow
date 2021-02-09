import 'package:flutter/material.dart';
import 'package:flutter_navigator_flow/first_flow/first_flow_riverpod.dart';
import 'package:hooks_riverpod/all.dart';

class FirstAboutMobileLayout extends StatelessWidget {
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
              'First About screen',
              style: TextStyle(
                fontSize: 32.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              'Text from the previous screen: ${storeStaticValues.myName}',
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
                Navigator.pushNamed(context,
                  storeStaticValues.nextPage(
                    screenIndex: storeStaticValues.currentScreenIndex,
                  ),
                );
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
