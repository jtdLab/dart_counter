part of './app_text_field.dart';

class ErrorDisplayer extends StatelessWidget {
  final String message;

  const ErrorDisplayer({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size12(context),
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0), // TODO
          child: AutoSizeText(
            message,
            maxLines: 1,
            maxFontSize: AppFontSizes.mini, // TODO
            minFontSize: 1, // TODO
            style: const TextStyle(color: AppColors.red), // TODO
          ),
        ),
      ),
    );
  }
}
