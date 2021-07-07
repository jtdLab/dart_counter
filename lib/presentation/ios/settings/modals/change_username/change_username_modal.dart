import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ChangeUsernameModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return AutoRouter();
    return AppPage(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Initial(),
    );
  }
}

/**
 * class SubPage1 extends StatelessWidget {
  const SubPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(
          toString(),
        ),
      ),
    );
  }
}

class SubPage2 extends StatelessWidget {
  const SubPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(
          toString(),
        ),
      ),
    );
  }
}

 */
