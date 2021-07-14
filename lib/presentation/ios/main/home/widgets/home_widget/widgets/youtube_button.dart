import 'package:dart_counter/presentation/ios/core/core.dart';

class YoutubeButton extends StatelessWidget {
  const YoutubeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () async => await canLaunch(
              'https://www.youtube.com/channel/UCChe8RMi5XJKri5hU9glisQ')
          ? await launch(
              'https://www.youtube.com/channel/UCChe8RMi5XJKri5hU9glisQ')
          : throw 'Could not launch https://www.youtube.com/channel/UCChe8RMi5XJKri5hU9glisQ',
      child: Image.asset(AppImages.google_new),
    );
  }
}
