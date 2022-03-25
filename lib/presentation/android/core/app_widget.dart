import 'package:flutter/material.dart';

// TODO implement
class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  factory AppWidget.withRouter() =>
      const AppWidget(); // TODO pass android router

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
