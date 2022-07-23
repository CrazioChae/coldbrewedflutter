import 'package:flutter/material.dart';
import 'package:flutter_app/screens/ScreenA.dart';
import 'package:flutter_app/screens/ScreenB.dart';
import 'package:flutter_app/screens/ScreenC.dart';
import 'package:flutter_app/screens/loading.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Loading(),
      debugShowCheckedModeBanner: false,
      /*initialRoute: '/a',
      routes: {
        '/a': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
      },*/
    );
  }
}
