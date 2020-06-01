import 'package:flutter/material.dart';
import 'package:widgets_flutter/src/pages/home.dart';
import 'package:widgets_flutter/src/resources/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Home(),
      initialRoute: 'home',
      routes: menu.routes(),
      onGenerateRoute: (RouteSettings setting) {
        return MaterialPageRoute(builder: (BuildContext context) => Home());
      },
    );
  }
}
