// import 'dart:html';

import 'package:url_launcher/link.dart';

import './random_words.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'lectures.dart';
import 'alertBox.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.red),
        home: RandomWords());
  }
}
// Center(
//           child: Link(
//             target: LinkTarget.blank,
//             uri: Uri.parse("https://www.youtube.com/watch?v=cSR34CNXLvo"),
//             builder: (context, followLink) =>
//                 ElevatedButton(onPressed: followLink, child: Text('open Link')),
//           ),
//         )