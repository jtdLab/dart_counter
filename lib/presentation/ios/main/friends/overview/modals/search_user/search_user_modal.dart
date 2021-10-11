// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/friends/search_user/search_user_bloc.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class SearchUserModal extends StatelessWidget {
  const SearchUserModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchUserBloc>(),
      child: AppPage(
        onTap: () => FocusScope.of(context).unfocus(),
        child: const _SearchUserWidget(),
      ),
    );
  }
}
