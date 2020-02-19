import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String _mainText = 'This is my first assignment!';
  @override
  var textList = ['hello', 'hi', 'hey'];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Assignment'),
        ),
        body: Column(
          children: [
            Text(_mainText),
            RaisedButton(onPressed: () {
              setState(() {
                _mainText = 'This changed!';
              });
            }),
          ],
        ),
      ),
    );
  }
}
