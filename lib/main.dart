import 'package:flutter/material.dart';
import 'package:radio/RadioList.dart';

void main() {
  runApp(RadioApp());
}

class RadioApp extends StatelessWidget { // it is my main container
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: "Інтернет радіо ",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: RadioList(),
      // home: Text(
      //   'Початкова сторінка',
      //   textDirection: TextDirection.ltr,
      //   textAlign: TextAlign.center,
      // ),
    );
  }
}



