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
        const PlayerDisplayer(),
        const AppSpacer.normal(),
        Expanded(
          child: PageView(
            children: const [
              StandardInputArea(),
              DetailedInputArea(),
              SpeechInputArea(),
              OpticalInputArea(),
            ],
          ),
        ),
      ],
    );
  }
}
