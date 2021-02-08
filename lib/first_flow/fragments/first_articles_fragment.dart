import 'package:flutter/material.dart';
import 'package:flutter_navigator_flow/first_flow/first_flow_riverpod.dart';
import 'package:flutter_riverpod/all.dart';

class FirstArticlesMobileLayout extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();

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
            child: TextFormField(
              controller: textEditingController,
              autovalidateMode: AutovalidateMode.always,
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter something',
                labelText: 'Name *',
              ),
              onChanged: (value) {
                context.read(firstFlowRiverpod).setName = value;
              },
              validator: (String value) {
                return value.contains('@') ? 'Do not use the @ char.' : null;
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Consumer(
              builder: (context, watch, child) {
                final text = watch(firstFlowRiverpod);
                return Text(
                  'First Articles screen ${text.greeting} + ${text.myName}',
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
                    .pushReplacementNamed('firstScreenFlow/firstAboutScreen');
              },
              child: Text('Go to AboutScreen'),
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
