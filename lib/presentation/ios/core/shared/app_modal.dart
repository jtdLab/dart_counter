// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

class AppModal extends StatelessWidget {
  final Widget child;

  const AppModal({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: child,
      ),
    );
  }
}
