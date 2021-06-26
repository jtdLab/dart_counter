import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SentInvitationsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: Text(
        LocaleKeys.sent.tr().toUpperCase(),
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        // TODO extract into seperate widget
        SizedBox(
          height: 3 * size70(context) + 2 * size6(context),
          child: ListView.builder(
            itemCount: 5, // TODO
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SentInvitationsItem(
                    name: 'Dummy name', // TODO
                  ),
                  if (index < 5 - 1) // TODO
                    SizedBox(
                      height: size6(context),
                    )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
