import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:flutter/cupertino.dart';

class AppSearchField extends StatefulWidget {
  final Function(String) onChanged;
  final bool autoFocus;
  final bool autoCorrect;
  final String placeholder;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final VoidCallback? onEditingComplete;

  const AppSearchField({
    required this.onChanged,
    this.autoFocus = false,
    this.autoCorrect = false,
    this.placeholder = '',
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.onEditingComplete,
  });

  @override
  _AppSearchFieldState createState() => _AppSearchFieldState();
}

class _AppSearchFieldState extends State<AppSearchField> {
  bool valid = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              border: Border.all(
                width: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
