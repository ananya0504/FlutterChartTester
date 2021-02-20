import 'package:flutter/material.dart';
import 'data/new_user_count_parser.dart';

void main() {
  runApp(MyApp());
  loadNewUserCount();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
    );
  }
}

