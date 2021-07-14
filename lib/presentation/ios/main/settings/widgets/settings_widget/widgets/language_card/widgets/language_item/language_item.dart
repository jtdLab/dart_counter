import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class LanguageItem extends StatelessWidget {
  final Locale language;

  const LanguageItem({
    Key? key,
    required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCardItem.small(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlagDisplayer(
            language: language,
          ),
          Text(
            language.toLanguageTag().toUpperCase(),
          ),
          CheckBox(
            language: language,
          ),
        ],
      ),
    );
  }
}
