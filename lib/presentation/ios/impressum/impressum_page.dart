import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/back_button.dart';
import 'widgets/widgets.dart';

class ImpressumPage extends StatelessWidget {
  const ImpressumPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: const AppNavigationBar(
        leading: BackButton(),
      ),
      child: ImpressumWidget(),
    );
  }
}
