import 'package:dart_counter/application/friends/more/more_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

import 'widgets/widgets.dart';

class MoreModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MoreBloc>(),
      child: const MoreWidget(),
    );
  }
}
