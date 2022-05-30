// ignore_for_file: prefer_const_constructors

// import 'dart:html';
import 'package:flutter/services.dart' as rootBundle;
import 'dart:convert' show jsonDecode;
import 'dart:convert' show json;
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'alertBox.dart';

class mcqs extends StatelessWidget {
  const mcqs({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new MaterialApp(
        title: "ListView.builder",
        theme: new ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        home: new ListViewBuilder());
  }
}

class ListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: Icon(Icons.list),
                trailing: Text(
                  "Attempt",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("Test ${index + 1}"));
          }),
    );
  }
}
