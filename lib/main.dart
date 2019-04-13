import 'package:flutter/material.dart';
import './ui/make_it_rain.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Make Rain',
      home: MakeItRain(),
    );
  }
}
