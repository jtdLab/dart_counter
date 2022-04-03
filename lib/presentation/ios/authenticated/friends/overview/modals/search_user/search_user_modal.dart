// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/friends/search_user/search_user_bloc.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class SearchUserModal extends StatelessWidget implements AutoRouteWrapper {
  const SearchUserModal({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchUserBloc.getIt(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SearchUserView();
  }
}
