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
            ? EdgeInsets.all(_buttonPadding(context)).copyWith(left: 0)
            : (noPaddingRight ?? false)
                ? EdgeInsets.all(_buttonPadding(context)).copyWith(right: 0)
                : EdgeInsets.all(_buttonPadding(context)),
        onPressed: onPressed,
        child: Container(
          color: AppColors.green,
          child: SizedBox(
            width: _buttonIconSize(context),
            height: _buttonIconSize(context),
            child: child,
          ),
        ),
      ),
    );
  }
}
