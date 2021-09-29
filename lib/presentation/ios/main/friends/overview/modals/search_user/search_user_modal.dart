// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/friends/search_user/search_user_bloc.dart';

// SHARED WIDGETS
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_text_field/app_text_field.dart';

// LOCALE WIDGETS
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
