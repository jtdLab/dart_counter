import 'dart:io';

import 'package:dart_counter/presentation/core/errors.dart';
import 'package:flutter/widgets.dart';

class PlatformWidget extends StatelessWidget {
  final Widget Function(BuildContext)? ios;
  final Widget Function(BuildContext)? android;
  final Widget Function(BuildContext)? web;

  const PlatformWidget({Key? key, this.ios, this.android, this.web})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      if (ios == null) throw PlatformNotSupportedError();
      return ios!(context);
    } else if (Platform.isAndroid) {
      if (android == null) throw PlatformNotSupportedError();
      return android!(context);
    } else {
      // if platform is neither ios or android we use the web version of the app
      if (web == null) throw PlatformNotSupportedError();
      return web!(context);
    }
  }
}