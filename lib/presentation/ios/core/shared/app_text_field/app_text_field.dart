// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class AppTextField extends HookWidget {
  final String text;
  final bool withErrorDisplayer;
  final Function(String) onChanged;
  final bool autoFocus;
  final bool autoCorrect;
  final String placeholder;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final VoidCallback? onEditingComplete;
  final bool? valid;
  final String? errorMessage;
  final bool showClear;
  final VoidCallback? onClear;

  const AppTextField({
    Key? key,
    this.text = '',
    this.withErrorDisplayer = true,
    required this.onChanged,
    this.autoFocus = false,
    this.autoCorrect = false,
    this.placeholder = '',
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.onEditingComplete,
    this.valid,
    this.errorMessage,
    this.showClear = false,
    this.onClear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: text);

    return Column(
      children: [
        SizedBox(
          height: size40(context),
          child: Stack(
            fit: StackFit.expand,
            children: [
              CupertinoTextField(
                controller: controller,
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                autofocus: autoFocus,
                autocorrect: autoCorrect,
                placeholder: placeholder.toUpperCase(),
                obscureText: obscureText,
                keyboardType: keyboardType,
                textInputAction: textInputAction,
                onEditingComplete: onEditingComplete,
                onChanged: onChanged,
                placeholderStyle: CupertinoTheme.of(context)
                    .textTheme
                    .textStyle
                    .copyWith(color: AppColors.gray),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: withErrorDisplayer && !(valid ?? true)
                      ? Border.all(
                          color: AppColors.red,
                          width: border4(context),
                        )
                      : Border.all(
                          width: border4(context),
                        ),
                ),
              ),
              if (showClear && controller.text.isNotEmpty) ...[
                Align(
                  alignment: Alignment.centerRight,
                  child: CupertinoButton(
                    padding: EdgeInsets.only(right: size6(context)),
                    onPressed: () {
                      controller.clear();
                      onClear?.call();
                    },
                    child: Icon(
                      CupertinoIcons.xmark,
                      color: AppColors.black,
                      size: 2 * size12(context),
                    ),
                  ),
                ),
              ],
              Visibility(
                visible: !(valid ?? true),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: size6(context)),
                    child: Icon(
                      CupertinoIcons.xmark,
                      color: AppColors.red,
                      size: 2 * size12(context),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        if (withErrorDisplayer) ...[
          if (valid ?? false) ...[
            SizedBox(
              height: size12(context),
            ),
          ] else ...[
            ErrorDisplayer(
              message: errorMessage ?? '',
            ),
          ]
        ]
      ],
    );
  }
}

class ValidationAppTextField extends HookWidget {
  final String text;
  final bool withErrorDisplayer;
  final Function(String) onChanged;
  final bool autoFocus;
  final bool autoCorrect;
  final String placeholder;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final VoidCallback? onEditingComplete;
  final bool? valid;
  final String? errorMessage;
  final bool showClear;
  final VoidCallback? onClear;

  const ValidationAppTextField({
    this.text = '',
    this.withErrorDisplayer = true,
    required this.onChanged,
    this.autoFocus = false,
    this.autoCorrect = false,
    this.placeholder = '',
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.onEditingComplete,
    this.valid,
    this.errorMessage,
    this.showClear = false,
    this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Column(
      children: [
        SizedBox(
          height: size40(context),
          child: Stack(
            fit: StackFit.expand,
            children: [
              CupertinoTextField(
                controller: controller,
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                autofocus: autoFocus,
                autocorrect: autoCorrect,
                placeholder: placeholder.toUpperCase(),
                obscureText: obscureText,
                keyboardType: keyboardType,
                textInputAction: textInputAction,
                onEditingComplete: onEditingComplete,
                onChanged: onChanged,
                placeholderStyle: CupertinoTheme.of(context)
                    .textTheme
                    .textStyle
                    .copyWith(color: AppColors.gray),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: withErrorDisplayer && !(valid ?? true)
                      ? Border.all(
                          color: AppColors.red,
                          width: border4(context),
                        )
                      : Border.all(
                          width: border4(context),
                        ),
                ),
              ),
              if (showClear && controller.text.isNotEmpty) ...[
                Align(
                  alignment: Alignment.centerRight,
                  child: CupertinoButton(
                    padding: EdgeInsets.only(right: size6(context)),
                    onPressed: () {
                      controller.clear();
                      onClear?.call();
                    },
                    child: Icon(
                      CupertinoIcons.xmark,
                      color: AppColors.black,
                      size: 2 * size12(context),
                    ),
                  ),
                ),
              ],
              Visibility(
                visible: !(valid ?? true),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: size6(context)),
                    child: Icon(
                      CupertinoIcons.xmark,
                      color: AppColors.red,
                      size: 2 * size12(context),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        if (valid ?? false) ...[
          SizedBox(
            height: size12(context),
          ),
        ] else ...[
          ErrorDisplayer(
            message: errorMessage ?? '',
          ),
        ]
      ],
    );
  }
}
