import 'package:dart_counter/presentation/ios/core/core.dart';

class FourPlayerDisplayer extends StatelessWidget {
  const FourPlayerDisplayer({
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
