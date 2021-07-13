import 'package:url_launcher/url_launcher.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class InstagramButton extends StatelessWidget {
  const InstagramButton({Key? key}) : super(key: key);

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
