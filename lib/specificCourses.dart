// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';
import 'package:flutter/services.dart' as rootBundle;
import 'dart:convert' show jsonDecode;
import 'dart:convert' show json;
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'lectures.dart';
import 'mcqs.dart';
import 'alertBox.dart';
import 'random_words.dart';

class specificCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RandomWords()),
                  );
                }),
            title: const Text(
              'Mathematics',
            ),
            backgroundColor: Color.fromARGB(255, 240, 89, 78),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.account_box_rounded), text: "Lectures"),
                Tab(icon: Icon(Icons.done), text: "MCQS")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              lectures(),
              mcqs(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) => alertbox()),
            backgroundColor: Colors.green,
            child: const Icon(Icons.shopping_bag),
          ),
        ),
      ),
    );
  }
}
