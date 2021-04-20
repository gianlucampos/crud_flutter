import 'package:flutter/material.dart';

import 'home_page.dart';
import 'core/app_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.background,
      ),
      home: HomePage(),
    );
  }
}
