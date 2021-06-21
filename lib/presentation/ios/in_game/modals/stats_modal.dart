import 'package:dart_counter/presentation/ios/core/widgets/app_page.dart';
import 'package:flutter/cupertino.dart';

class StatsModal extends StatelessWidget {
  const StatsModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      child: Center(
        child: Text(
          toString(),
        ),
      ),
    );
  }
}
