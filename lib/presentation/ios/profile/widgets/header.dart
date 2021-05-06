import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/circle_image.dart';
import 'package:flutter/cupertino.dart';

class Header extends StatelessWidget {
  final String? photoUrl;

  const Header({Key? key, this.photoUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      ),
      child: Container(
        color: AppColors.black,
        child: Center(
          child: Column(
            children: [
              const Spacer(
                flex: 22,
              ),
              Expanded(
                flex: 163,
                child: CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  child: photoUrl != null
                      ? CircleImage(
                          CachedNetworkImageProvider(photoUrl!),
                        )
                      : const CircleImage(
                          AssetImage(AppImages.photoPlaceholder),
                        ),
                ),
              ),
              const Spacer(
                flex: 17,
              ),
              AutoSizeText(
                'TODO name',
                maxLines: 1,
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
              const Spacer(
                flex: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
