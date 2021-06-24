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
        SentInvitationsItem(),
        SentInvitationsItem(),
        SentInvitationsItem(),
      ],
    );
  }
}
