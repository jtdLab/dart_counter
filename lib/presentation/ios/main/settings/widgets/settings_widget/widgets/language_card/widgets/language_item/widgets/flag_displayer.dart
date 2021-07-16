import 'package:dart_counter/presentation/ios/core/core.dart';

class FlagDisplayer extends StatelessWidget {
  final Locale language;

  const FlagDisplayer({
    Key? key,
    required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(size6(context)),
      child: Image.asset(
        language == const Locale('de') ? AppImages.de : AppImages.uk,
      ),
    );
  }
}
