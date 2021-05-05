import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:flutter/material.dart';

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
  });

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool valid = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.responsiveDouble(
        context: context,
        mobile: ResponsiveDouble(normal: 40, large: 50, extraLarge: 60),
      ), // TODO screnn asdofhsdfongd
      child: Stack(
        fit: StackFit.expand,
        children: [
          CupertinoTextField(
            autofocus: widget.autoFocus,
            autocorrect: widget.autoCorrect,
            placeholder: widget.placeholder,
            obscureText: widget.obscureText,
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            onEditingComplete: widget.onEditingComplete,
            onChanged: widget.onChanged,
            decoration: BoxDecoration(
              color: AppColors.gray,
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
              border: widget.valid ?? true
                  ? null
                  : Border.all(
                      color: AppColors.red,
                      width: 1,
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
                  CupertinoIcons.xmark_circle,
                  color: AppColors.red,
                  size: 25,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
