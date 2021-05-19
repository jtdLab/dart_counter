import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

class AccountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state == const AuthState.unauthenticated()) {
          context.router.replaceAll([const AuthWidgetRoute()]);
        } 
      },
      child: AppCard(
        headerHeight: 50,
        middle: AutoSizeText(
          LocaleKeys.account.tr(),
          minFontSize: 8,
          maxLines: 1,
          style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: AppColors.white),
        ),
        bodyHeight: 50,
        body: Center(
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () => context.read<AuthBloc>().add(const AuthEvent.signedOut()),
            child: AutoSizeText(
              LocaleKeys.signOut.tr(),
              minFontSize: 8,
              maxLines: 1,
              style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black),
            ),
          ),
        ),
      ),
    );
  }
}
