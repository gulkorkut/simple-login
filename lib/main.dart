import 'dart:io';
import 'package:flutter/material.dart';
import 'welcome_page.dart';
import 'login_page.dart';

void main() {runApp(MyApp());

}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: WelcomePage(),
    );
  }
}

