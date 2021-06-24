import 'package:dart_counter/presentation/ios/core/core.dart';

class AppNavigationBarButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const AppNavigationBarButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      minSize: 0,
      onPressed: onPressed,
      child: SizedBox(
        width: responsiveDouble(
          context: context,
          mobile: const ResponsiveDouble(
            small: 15,
            normal: 20,
            large: 25,
            extraLarge: 30,
          ),
        ),
        height: responsiveDouble(
          context: context,
          mobile: const ResponsiveDouble(
            small: 15,
            normal: 20,
            large: 25,
            extraLarge: 30,
          ),
        ),
        child: child,
      ),
    );
  }
}
