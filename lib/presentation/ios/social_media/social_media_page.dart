import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/social_media/widgets/social_media_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          LocaleKeys.socialMedia.tr(),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () async => await canLaunch(
                        'https://www.instagram.com/darts_ger/')
                    ? await launch('https://www.instagram.com/darts_ger/')
                    : throw 'Could not launch https://www.instagram.com/darts_ger/',
                child: SocialMediaCard(
                  title: 'Instagram',
                  imagePath: AppImages.instagram,
                ),
              ),
              const SizedBox(height: 4),
              CupertinoButton(
                padding: EdgeInsets.zero,
                child: SocialMediaCard(
                  title: 'Youtube',
                  imagePath: AppImages.youtube,
                ),
                onPressed: () async => await canLaunch(
                        'https://www.youtube.com/channel/UCChe8RMi5XJKri5hU9glisQ')
                    ? await launch(
                        'https://www.youtube.com/channel/UCChe8RMi5XJKri5hU9glisQ')
                    : throw 'Could not launch https://www.youtube.com/channel/UCChe8RMi5XJKri5hU9glisQ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
