import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class InvitationsWidget extends StatelessWidget {
  const InvitationsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size12(context),
      children: const [
        AppSpacer.small(),
        ReceivedInvitationsCard(),
        AppSpacer.small(),
        SentInvitationsCard(),
      ],
    );
  }
}
