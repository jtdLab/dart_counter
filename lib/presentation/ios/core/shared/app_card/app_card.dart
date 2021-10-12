// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class AppCard extends StatelessWidget {
  final BorderRadius borderRadius;
  final Widget? leading;
  final Widget? middle;
  final Widget? trailing;
  final double? headerBodySpacing;
  final double? childrenSpacing;
  final List<Widget> children;

  const AppCard({
    this.borderRadius = BorderRadius.zero,
    this.leading,
    this.middle,
    this.trailing,
    this.headerBodySpacing,
    this.childrenSpacing,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Column(
        children: [
          AppColumn(
            spacing: headerBodySpacing ?? size12(context),
            children: [
              Container(
                height: size45(context),
                color: AppColors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (leading == null)
                      const Spacer()
                    else
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size6(context)),
                        child: leading,
                      ),
                    if (middle == null)
                      const Spacer()
                    else
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size6(context)),
                        child: middle,
                      ),
                    if (trailing == null)
                      const Spacer()
                    else 
                      trailing!,
                  ],
                ),
              ),
              AppColumn(
                spacing: childrenSpacing ?? size6(context),
                children: children,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
