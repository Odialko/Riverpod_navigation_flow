import 'package:flutter/material.dart';
import 'package:flutter_navigator_flow/first_flow/first_flow_riverpod.dart';
import 'package:flutter_riverpod/all.dart';

class FirstArticlesMobileLayout extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firstFlowRiverpod =
        ChangeNotifierProvider((ref) => FirstFlowRiverpod());

    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: textEditingController,
            autovalidateMode: AutovalidateMode.always,
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'What do people call you?',
              labelText: 'Name *',
            ),
            onChanged: (value) {
              print('=====value ${value}');
              context.read(firstFlowRiverpod).setName = value;
              // context.read(firstFlowRiverpod).setName(value);
            },
            validator: (String value) {
              return value.contains('@') ? 'Do not use the @ char.' : null;
            },
          ),
          Consumer(
            builder: (context, watch, child) {
              final text = watch(firstFlowRiverpod);
              return Text(
                '2. First Articles screen ${text.greeting} + ${text.myName}',
                style: TextStyle(
                  fontSize: 32.0,
                ),
              );
            },
          ),
          GestureDetector(
            child: FlatButton(
              onPressed: () {

                // Navigator.of(context)
                //     .pushReplacementNamed('firstScreenFlow/firstAboutScreen');
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
