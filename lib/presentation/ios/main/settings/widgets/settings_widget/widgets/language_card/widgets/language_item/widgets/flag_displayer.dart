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
      padding: const EdgeInsets.all(5.0), // TODO not constant??
      child: Image.asset(
        language == const Locale('de') ? AppImages.de : AppImages.uk,
      ),
    );
  }
}
