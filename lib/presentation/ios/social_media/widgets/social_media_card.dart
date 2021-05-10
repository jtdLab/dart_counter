import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card.dart';
import 'package:flutter/cupertino.dart';

class SocialMediaCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const SocialMediaCard(
      {Key? key, required this.title, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      headerHeight: 50,
      middle: AutoSizeText(
        title,
        minFontSize: 8,
        maxLines: 1,
        style: const TextStyle(
            fontSize: 23, fontWeight: FontWeight.bold, color: AppColors.white),
      ),
      bodyHeight: 50,
      body: Row(
        children: [
          const Spacer(),
          Image.asset(
            imagePath,
            width: 50,
            height: 50,
          ),
          const Spacer(),
          Expanded(
            flex: 4,
            child: AutoSizeText(
              'darts_ger',
              maxLines: 1,
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
