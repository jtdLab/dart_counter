// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class CreateTrainingPage extends StatelessWidget {
  const CreateTrainingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppPage(
      child: SingleChildScrollView(
        child: _CreateTrainingWidget(),
      ),
    );
  }
}
