import 'package:dart_counter/presentation/ios/core/core.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        AppAnimations.loading_dots_black,
        width: 2 * size50(context),
        height: 2 * size50(context),
      ),
    );
  }
}
