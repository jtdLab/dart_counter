import 'package:flutter/material.dart';

// TODO implement
class AndroidAppWidget extends StatelessWidget {
  const AndroidAppWidget({
    Key? key,
  }) : super(key: key);

  factory AndroidAppWidget.withRouter() =>
      const AndroidAppWidget(); // TODO pass android router

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
