// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/friends/friends_bloc.dart';
import 'package:dart_counter/application/friends/more/more_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/friend/friend.dart';

// LOCAL WIDGETS
part 'widgets.dart';

// TODO cupertino page here
class MoreModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MoreBloc>(),
      child: const AppModal(
        child: _MoreWidget(),
      ),
    );
  }
}
