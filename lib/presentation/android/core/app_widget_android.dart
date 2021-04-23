import 'package:flutter/material.dart';

class AppWidgetAndroid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DartCounter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: Text('DartCounter Android'),
        ),
      ),
    );
  }
}