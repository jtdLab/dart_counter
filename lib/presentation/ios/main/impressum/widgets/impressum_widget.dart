import 'package:dart_counter/presentation/ios/core/core.dart';

class ImpressumWidget extends StatelessWidget {
  const ImpressumWidget({
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
