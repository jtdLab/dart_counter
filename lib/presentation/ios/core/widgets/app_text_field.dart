import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/auth/sign_up/widgets/error_displayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

// TODO assert error message is provided if validation is applied
class AppTextField extends StatefulWidget {
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

  const AppTextField({
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
  });

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.size40(context),
          child: Stack(
            fit: StackFit.expand,
            children: [
              CupertinoTextField(
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                autofocus: widget.autoFocus,
                autocorrect: widget.autoCorrect,
                placeholder: widget.placeholder.toUpperCase(),
                obscureText: widget.obscureText,
                keyboardType: widget.keyboardType,
                textInputAction: widget.textInputAction,
                onEditingComplete: widget.onEditingComplete,
                onChanged: widget.onChanged,
                placeholderStyle: CupertinoTheme.of(context)
                    .textTheme
                    .textStyle
                    .copyWith(color: AppColors.gray),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: widget.valid ?? true
                      ? Border.all(
                          width: 4,
                        )
                      : Border.all(
                          color: AppColors.red,
                          width: 4,
                        ),
                ),
              ),
              Visibility(
                visible: !(widget.valid ?? true),
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 8.0, 0),
                    child: Icon(
                      CupertinoIcons.xmark,
                      color: AppColors.red,
                      size: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        if (widget.valid ?? false) ...[
          SizedBox(
            height: widget.size12(context),
          ),
        ] else ...[
          ErrorDisplayer(
            message: widget.errorMessage ?? '',
          ),
        ]
      ],
    );
  }
}
