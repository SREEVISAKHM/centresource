import 'package:centresource_machine_test/view/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Machine Test',
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.black, fontSize: 15),
          headline2: TextStyle(color: Colors.white, fontSize: 15),
          headline3: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 24,
          ),
        ),
      ),
      home: Home(),
    );
  }
}
