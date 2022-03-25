// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/friends/search_user/search_user_bloc.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class SearchUserModal extends StatelessWidget {
  const SearchUserModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchUserBloc.getIt(),
      child: AppPage(
        padding: modalPagePadding(context),
        onTap: () => FocusScope.of(context).unfocus(),
        child: const _SearchUserWidget(),
      ),
    );
  }
}
