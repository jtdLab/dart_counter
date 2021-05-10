import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/application/profile/edit_profile_bloc.dart';
import 'package:dart_counter/application/user/user_actor/user_actor_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

class EditProfilePictureModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<EditProfileBloc>(
      create: (context) => getIt<EditProfileBloc>(),
      child: Builder(
        builder: (context) => SafeArea(
          top: false,
          bottom: false,
          child: Material(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 20,
                  child: Container(
                    color: AppColors.black2,
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 25),
                  tileColor: AppColors.black2,
                  title: Row(
                    children: [
                      const Spacer(
                        flex: 104,
                      ),
                      Expanded(
                        flex: 167,
                        child: CupertinoButton(
                            padding: EdgeInsets.zero,
                            color: AppColors.red,
                            child: Text(
                              LocaleKeys.deletePhoto.tr(),
                              style: const TextStyle(
                                color: AppColors.white,
                              ),
                              maxLines: 1,
                            ),
                            onPressed: () {
                              context
                                  .read<EditProfileBloc>()
                                  .add(const EditProfileEvent.delete());
                              context.router.pop();
                            }),
                      ),
                      const Spacer(
                        flex: 104,
                      ),
                    ],
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 25),
                  tileColor: AppColors.black2,
                  title: Row(
                    children: [
                      const Spacer(
                        flex: 104,
                      ),
                      Expanded(
                        flex: 167,
                        child: CupertinoButton(
                            padding: EdgeInsets.zero,
                            color: AppColors.gray,
                            child: Text(
                              LocaleKeys.takePhoto.tr(),
                              style: const TextStyle(
                                color: AppColors.black2,
                              ),
                              maxLines: 1,
                            ),
                            onPressed: () {
                              context
                                  .read<EditProfileBloc>()
                                  .add(const EditProfileEvent.take());
                              context.router.pop();
                            }),
                      ),
                      const Spacer(
                        flex: 104,
                      ),
                    ],
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 25),
                  tileColor: AppColors.black2,
                  title: Row(
                    children: [
                      const Spacer(
                        flex: 104,
                      ),
                      Expanded(
                        flex: 167,
                        child: CupertinoButton(
                            padding: EdgeInsets.zero,
                            color: AppColors.gray,
                            child: Text(
                              LocaleKeys.choosePhoto.tr(),
                              style: const TextStyle(
                                color: AppColors.black2,
                              ),
                              maxLines: 1,
                            ),
                            onPressed: () {
                              context
                                  .read<EditProfileBloc>()
                                  .add(const EditProfileEvent.choose());
                              context.router.pop();
                            }),
                      ),
                      const Spacer(
                        flex: 104,
                      ),
                    ],
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 25),
                  tileColor: AppColors.black2,
                  title: Row(
                    children: [
                      const Spacer(
                        flex: 134,
                      ),
                      Expanded(
                        flex: 107,
                        child: CupertinoButton(
                          onPressed: () => context.router.pop(),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0)),
                            child: Container(
                              color: AppColors.green,
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Center(
                                  child: AutoSizeText(
                                    LocaleKeys.done.tr(),
                                    minFontSize: 1,
                                    maxLines: 1,
                                    style:
                                        const TextStyle(color: AppColors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 134,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
