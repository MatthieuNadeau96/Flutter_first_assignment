import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var textIndex = 0;
  void buttonPressed() {
    setState(() {
      textIndex = textIndex + 1;
    });
    print(textIndex);
  }

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
            Text(textList[textIndex]),
            RaisedButton(
              onPressed: buttonPressed,
            ),
          ],
        ),
      ),
    );
  }
}


