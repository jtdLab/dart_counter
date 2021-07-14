import 'package:dart_counter/presentation/ios/core/core.dart';

class SpeechKeyBoard extends StatelessWidget {
  const SpeechKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4 * size55(context) + 3 * size6(context), // TODO
      child: Center(
        child: Image.asset(AppImages.micro),
      ),
    );
  }
}
