import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';

import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

import 'widgets/widgets.dart';

class InvitationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        leading: const BackButton(),
        middle: Text(LocaleKeys.invitations.tr().toUpperCase()),
      ),
      child: const InvitationsWidget(),
    );
  }
}
