import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class FriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      onTap: () => FocusScope.of(context).unfocus(),
      navigationBar: AppNavigationBar(
        leading: const BackButton(),
        middle: Text(LocaleKeys.friends.tr().toUpperCase()),
      ),
      child: const FriendsWidget(),
    );
  }
}
