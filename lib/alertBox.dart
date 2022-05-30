import 'package:flutter/services.dart' as rootBundle;
import 'dart:convert' show jsonDecode;
import 'dart:convert' show json;
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'lectures.dart';
import 'mcqs.dart';

class alertbox extends StatelessWidget {
  const alertbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Buy Status'),
      content: const Text('Congrats! You have successfully bought the course'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
