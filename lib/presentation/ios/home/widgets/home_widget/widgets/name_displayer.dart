import 'package:dart_counter/application/core/user/user_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class NameDisplayer extends StatelessWidget {
  const NameDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (success) {
            final name = success.user.profile.username.getOrCrash();
            return Container(
              height: size40(context),
              decoration: BoxDecoration(
                color: AppColors.blue_new,
                border: Border.all(
                  width: border4(context),
                ),
              ),
              child: Center(
                child: Text(
                  name.toUpperCase(),
                  style:
                      CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                            color: AppColors.white,
                          ),
                ),
              ),
            );
          },
          orElse: () => throw UnexpectedStateError(),
        );
      },
    );
  }
}
