part of 'app_navigation_bar.dart';

class AppNavigationBarButton extends StatelessWidget {
  final bool? noPaddingLeft;
  final bool? noPaddingRight;
  final VoidCallback onPressed;
  final Widget child;

  const AppNavigationBarButton({
    Key? key,
    this.noPaddingLeft,
    this.noPaddingRight,
    required this.onPressed,
    required this.child,
  })  : assert(!(noPaddingLeft == true && noPaddingRight == true)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue,
      child: CupertinoButton(
        minSize: 0,
        padding: (noPaddingLeft ?? false)
            ? _padding(context).copyWith(left: 0)
            : (noPaddingRight ?? false)
                ? _padding(context).copyWith(right: 0)
                : _padding(context),
        onPressed: onPressed,
        child: Container(
          color: AppColors.green,
          child: SizedBox(
            width: _iconSize(context),
            height: _iconSize(context),
            child: child,
          ),
        ),
      ),
    );
  }

  // TODO
  EdgeInsets _padding(BuildContext context) => responsiveValue(
        context,
        defaultValue: const EdgeInsets.all(16),
        mobileSmall: const EdgeInsets.all(10),
        mobileNormal: const EdgeInsets.all(12),
        mobileLarge: const EdgeInsets.all(14),
        mobileExtraLarge: const EdgeInsets.all(16),
        tabletSmall: const EdgeInsets.all(16),
        tabletNormal: const EdgeInsets.all(18),
        tabletLarge: const EdgeInsets.all(18),
        tabletExtraLarge: const EdgeInsets.all(20),
      );

  // TODO
  double _iconSize(BuildContext context) => responsiveValue(
        context,
        defaultValue: 30,
        mobileSmall: 20,
        mobileNormal: 20,
        mobileLarge: 25,
        mobileExtraLarge: 30,
        tabletSmall: 30,
        tabletNormal: 35,
        tabletLarge: 45,
        tabletExtraLarge: 40,
      );
}
