import 'package:dart_counter/presentation/ios/core/core.dart';

class LegalWidget extends StatelessWidget {
  const LegalWidget({
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
