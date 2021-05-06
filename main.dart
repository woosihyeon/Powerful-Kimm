import 'package:flutter/material.dart';
import 'package:select_app/Card_page.dart';

void main() {
  runApp(SelectApp());
}

class SelectApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Cardpro(),
    );
  }
}


