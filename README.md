# dart_counter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

flutter pub run easy_localization:generate -S assets/languages -f keys -o locale_keys.g.dart

flutter pub run build_runner watch --delete-conflicting-outputs

flutter pub run easy_localization:generate -S assets/languages  

// TODO for later
class EditProfilePictureModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<EditProfileBloc>(),
        ),
      ],
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
                          onPressed: () {
                            context
                                .read<EditProfileBloc>()
                                .add(const EditProfileEvent.deletePressed());
                            context.router.pop();
                          },
                          child: Text(
                            LocaleKeys.deletePhoto.tr(),
                            style: const TextStyle(
                              color: AppColors.white,
                            ),
                            maxLines: 1,
                          ),
                        ),
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
                          onPressed: () {
                            context
                                .read<EditProfileBloc>()
                                .add(const EditProfileEvent.takePressed());
                            context.router.pop();
                          },
                          child: Text(
                            LocaleKeys.takePhoto.tr(),
                            style: const TextStyle(
                              color: AppColors.black2,
                            ),
                            maxLines: 1,
                          ),
                        ),
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
                          onPressed: () {
                            context
                                .read<EditProfileBloc>()
                                .add(const EditProfileEvent.choosePressed());
                            context.router.pop();
                          },
                          child: Text(
                            LocaleKeys.choosePhoto.tr(),
                            style: const TextStyle(
                              color: AppColors.black2,
                            ),
                            maxLines: 1,
                          ),
                        ),
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