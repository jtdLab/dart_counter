// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

class LogoDisplayer extends StatelessWidget {
  const LogoDisplayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size150(context),
      height: size150(context),
      child: Image.asset(AppImages.logo),
    );
  }
}
