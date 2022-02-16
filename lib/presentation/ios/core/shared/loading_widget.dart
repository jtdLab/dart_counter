// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget()
      : super(
          key: const Key('loading_widget'),
        );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        AppAnimations.loadingDotsBlack,
        width: 2 * size50(context),
        height: 2 * size50(context),
      ),
    );
  }
}
