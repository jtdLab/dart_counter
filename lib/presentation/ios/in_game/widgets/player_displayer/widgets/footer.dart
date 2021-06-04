import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size70(context) + 3 * size6(context), // TODO height
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Key : Value'.toUpperCase()),
          ),
          Center(
            child: Text('Key : Value'.toUpperCase()),
          ),
          Center(
            child: Text('Key : Value'.toUpperCase()),
          ),
        ],
      ),
    );
  }
}
