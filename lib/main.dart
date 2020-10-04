import 'package:flutter/material.dart';

// void main() {
//   runApp(
//       MyApp());
// }

void main() {
  runApp(new MaterialApp(
    home: Home(),
    // debugShowCheckedModeBanner: false,
    title: "Radio",
    // theme: ThemeData(backgroundColor: Color.fromRGBO(39, 139, 229, 100)),
  ));
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}


class HomeState extends State<Home> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Radio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Text(
        'Початкове вікно55',
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
      ),
    );
  }
}



