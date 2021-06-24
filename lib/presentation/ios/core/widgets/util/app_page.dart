import 'package:lottie/lottie.dart';

import 'package:dart_counter/application/core/loading/loading_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/app_navigation_bar.dart';

class AppPage extends StatelessWidget {
  final VoidCallback? onTap;
  final double? maxHeight;
  final AppNavigationBar? navigationBar;
  final Widget child;

  const AppPage({
    Key? key,
    this.maxHeight,
    this.navigationBar,
    required this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CupertinoPageScaffold(
        child: SafeArea(
          child: BlocBuilder<LoadingBloc, LoadingState>(
            builder: (context, state) => state.map(
              loading: (_) => Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Lottie.asset(Animations.loading),
                ),
              ),
              notLoading: (_) => Padding(
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                child: Column(
                  children: [
                    navigationBar ?? Container(),
                    const AppSpacer.large(),
                    Expanded(
                      child: LayoutBuilder(
                        builder: (context, boxConstraints) =>
                            SingleChildScrollView(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: boxConstraints.maxHeight,
                              maxHeight: maxHeight ??
                                  (boxConstraints.maxHeight < 574
                                      ? 574
                                      : boxConstraints.maxHeight),
                            ),
                            child: child,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
