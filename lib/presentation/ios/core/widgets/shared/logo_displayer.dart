import 'package:dart_counter/presentation/ios/core/core.dart';

class LogoDisplayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size150(context),
      height: size150(context),
      child: Image.asset(AppImages.logo),
    );
  }
}
