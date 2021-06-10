import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class InstagramButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () async =>
          await canLaunch('https://www.instagram.com/darts_ger/')
              ? await launch('https://www.instagram.com/darts_ger/')
              : throw 'Could not launch https://www.instagram.com/darts_ger/',
      child: Image.asset(AppImages.ig_new),
    );
  }
}
