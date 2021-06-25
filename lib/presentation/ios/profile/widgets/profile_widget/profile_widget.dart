import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Spacer(),
        ProfileImageDisplayer(),
        Spacer(),
        CareerStatsDisplayer(),
        Spacer(),
      ],
    );
  }
}
