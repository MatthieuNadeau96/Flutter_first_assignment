import 'package:first_assignment/text_output.dart';
import 'package:flutter/material.dart';

class TextControl extends StatefulWidget {
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String _mainText = 'This is my first assignment!';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextOutput(_mainText),
        RaisedButton(
          onPressed: () {
            setState(() {
              _mainText = 'This changed!';
            });
          },
          child: Text('Change Text'),
        ),
      ],
    );
  }
}
