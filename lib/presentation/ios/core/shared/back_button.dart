// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

class BackButton extends StatelessWidget {
  const BackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      noPaddingLeft: true,
      onPressed: () => context.router.pop(),
      child: Image.asset(
        AppImages.chevronBackNew,
      ),
    );
  }
}
