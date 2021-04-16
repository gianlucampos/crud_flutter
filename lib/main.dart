import 'package:flutter/material.dart';

import 'Home.dart';
import 'constants/Colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: BACKGROUND,
      ),
      home: Home(),
    );
  }
}
