import 'package:dart_counter/presentation/ios/core/core.dart';

class SpeechKeyBoard extends StatelessWidget {
  const SpeechKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          AppImages.micro,
          width: size150(context),
          height: size150(context),
        ),
        const Spacer(),
      ],
    );
  }
}
