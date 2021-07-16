import 'package:dart_counter/presentation/ios/core/core.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        AppAnimations.loading,
        width: 100, // TODO responsive
        height: 100, // TODO responsive
      ),
    );
  }
}
