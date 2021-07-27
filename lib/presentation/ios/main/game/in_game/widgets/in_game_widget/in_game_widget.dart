import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class InGameWidget extends StatelessWidget {
  const InGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 45,
          child: Container(
            color: AppColors.blue,
          ),
        ),
        const AppSpacer.normal(),
        Expanded(
          flex: 55,
          child: PageView(
            children: const [
              StandardInputArea(),
              DetailedInputArea(),
              SpeechInputArea(),
              //OpticalInputArea(),
            ],
          ),
        ),
      ],
    );
  }
}
