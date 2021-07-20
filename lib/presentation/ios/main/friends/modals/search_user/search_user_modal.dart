import 'package:dart_counter/application/friends/search_user/search_user_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SearchUserModal extends StatelessWidget {
  const SearchUserModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchUserBloc>(),
      child: const AppPage(
        child: SearchUserWidget(),
      ),
    );
  }
}
