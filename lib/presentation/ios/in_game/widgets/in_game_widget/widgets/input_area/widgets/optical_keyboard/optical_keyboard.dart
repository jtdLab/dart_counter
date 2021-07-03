import 'package:dart_counter/presentation/ios/core/core.dart';

class OpticalKeyboard extends StatelessWidget {
  const OpticalKeyboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4 * size55(context) + 3 * size6(context),
      color: AppColors.blue,
      child: Center(
        child: Text(toString()),
      ),
    );
  }
}
