// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/friends/friends_bloc.dart';
import 'package:dart_counter/application/authenticated/friends/more/more_bloc.dart';

// LOCAL WIDGETS
part 'widgets.dart';

// TODO cupertino page here
class MoreModal extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => MoreBloc.getIt(
        context.read<FriendsBloc>(),
      ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const MoreView();
  }
}
