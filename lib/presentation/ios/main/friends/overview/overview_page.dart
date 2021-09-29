// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/friends/friends_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/friend/friend_request.dart';

// MODALS
import 'modals/search_user/search_user_modal.dart';
import 'modals/more/more_modal.dart';

// SHARED WIDGETS
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/back_button.dart';

// LOCALE WIDGETS
part 'widgets.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<FriendsBloc, FriendsState>(
      listener: (context, state) {
        if (state.selectedFriend != null) {
          context.router.navigate(const ProfilePageRoute());
        }
      },
      child: AppPage(
        onTap: () => FocusScope.of(context).unfocus(),
        navigationBar: AppNavigationBar(
          leading: const BackButton(),
          middle: Text(LocaleKeys.friends.tr().toUpperCase()),
          trailing: AppNavigationBarButton(
            onPressed: () => showCupertinoModalBottomSheet(
              context: context,
              builder: (context) => const SearchUserModal(),
            ),
            child: Image.asset(
              AppImages.lupeNew,
            ),
          ),
        ),
        child: const SingleChildScrollView(
          child: _OverviewWidget(),
        ),
      ),
    );
  }
}
