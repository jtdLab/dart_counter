import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class GameHistoryDetailsCardContentRow extends StatelessWidget {
  final String title;
  final String value;

  const GameHistoryDetailsCardContentRow({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size6(context),
      ),
      child: Row(
        children: [
          Text(title),
          const Spacer(),
          Text(value),
        ],
      ),
    );
  }
}
