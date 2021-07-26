import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class PostGameWidget extends StatelessWidget {
  const PostGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size12(context),
      children: const [
        StatsWidget(),
        BackToHomeButton(),
      ],
    );
  }
}
