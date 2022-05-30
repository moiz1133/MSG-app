// ignore_for_file: prefer_const_constructors

// import 'dart:html';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'alertBox.dart';
import 'package:url_launcher/url_launcher.dart';

class lectures extends StatelessWidget {
  _launchUrl() async {
    const url = 'https://www.youtube.com/watch?v=Y9kdBxfqZU4';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Image.asset("assets/images/math.jpg",
                fit: BoxFit.fill, height: 500, width: 500),
            FlatButton(
              color: Colors.red, // background
              textColor: Colors.white, // foreground
              onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => alertbox()),
              child: Text('Buy Now'),
            ),
            Container(
              //apply margin and padding using Container Widget.
              padding: EdgeInsets.all(5), //You can use EdgeInsets like above
              margin: EdgeInsets.all(5),
              child: Text(
                "Mathematics is an area of knowledge that includes such topics as numbers,"
                "formulas and related structures, shapes and the spaces in which"
                "they are contained, and quantities and their changes."
                "There is no general consensus about its exact scope or epistemological statusMathematics is an area of knowledge that includes such topics as numbers,"
                "formulas and related structures, shapes and the spaces in which"
                "they are contained, and quantities and their changes."
                "There is no general consensus about its exact scope or epistemological status",
                textAlign: TextAlign.justify,
                style: TextStyle(height: 1.5, color: Color(0xFF6F8398)),
              ),
            )
          ],
        ),
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Card(
              child: ListTile(
                title: Text(
                  "Lecture videos",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              color: Color.fromARGB(255, 255, 104, 104),
            )
          ],
        ),
        Column(
          children: [
            Card(
              child: ListTile(
                onTap: () => _launchUrl(),
                title: Text("Trigonometry"),
              ),
              elevation: 6,
              // shadowColor: Color.fromARGB(255, 255, 112, 112),
              margin: EdgeInsets.only(top: 20, right: 20, left: 20),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255), width: 1)),
            )
          ],
        ),
        Column(
          children: [
            Card(
              child: ListTile(
                title: Text("Number System"),
              ),
              elevation: 6,
              // shadowColor: Color.fromARGB(255, 255, 112, 112),
              margin: EdgeInsets.only(top: 20, right: 20, left: 20),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 252, 252), width: 1)),
            )
          ],
        ),
        Column(
          children: [
            Card(
              child: ListTile(
                title: Text(
                  "Geometry",
                ),
              ),
              elevation: 6,
              // shadowColor: Color.fromARGB(255, 255, 112, 112),
              margin: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255), width: 1)),
            )
          ],
        ),
      ],
    );
  }
}
