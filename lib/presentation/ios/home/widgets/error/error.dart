import 'package:flutter/cupertino.dart';

class Error extends StatelessWidget {
  const Error({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        toString(),
      ),
    );
  }
}
