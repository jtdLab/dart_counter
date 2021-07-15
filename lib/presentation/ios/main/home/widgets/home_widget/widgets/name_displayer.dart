import 'package:dart_counter/application/home/home_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class NameDisplayer extends StatelessWidget {
  const NameDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final username = state.user.profile.username.getOrCrash();

        return Container(
          height: size40(context),
          decoration: BoxDecoration(
            color: AppColors.blueNew,
            border: Border.all(
              width: border4(context),
            ),
          ),
          child: Center(
            child: Text(
              username.toUpperCase(),
              style: CupertinoTheme.of(context)
                  .textTheme
                  .textStyle
                  .copyWith(color: AppColors.white),
            ),
          ),
        );
      },
    );
  }
}
