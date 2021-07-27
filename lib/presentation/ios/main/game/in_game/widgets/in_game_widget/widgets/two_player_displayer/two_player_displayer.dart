import 'package:dart_counter/presentation/ios/core/core.dart';

class TwoPlayerDisplayer extends StatelessWidget {
  const TwoPlayerDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.red,
      child: Center(
        child: Text(
          toString(),
        ),
      ),
    );
  }
}
