import 'package:flutter/material.dart';
import 'strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // titleSection Widget
  Widget titleSection = Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround, //aLIGN TEXT HEADING AND SPACE AROUND THE TEXT
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
        child: Text(
          Strings.appHeadingTitle,
          style: TextStyle(
            color: new Color(0xff622F74),fontWeight:FontWeight.bold,
            fontSize: 30.0,
          )
        )
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appBarTitle, //Using the class from strings.dart
      theme: ThemeData(
        primaryColor: new Color(0xff622F74),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(Strings.appBarTitle),
        ),
        body: ListView(
          children: <Widget>[
            titleSection,
          ],
        ),
      ),
    );
  }
}
