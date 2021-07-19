import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SearchUserModal extends StatelessWidget {
  const SearchUserModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppPage(
      child: SearchUserWidget(),
    );
  }
}
