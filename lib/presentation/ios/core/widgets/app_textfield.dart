import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class AppTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final bool autoFocus;
  final bool autoCorrect;
  final String placeholder;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final VoidCallback? onEditingComplete;

  const AppTextField({
    this.onChanged,
    this.autoFocus = false,
    this.autoCorrect = false,
    this.placeholder = '',
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.onEditingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsiveDouble(
        context: context,
        mobile: [40, 50, 60],
      ), // TODO screnn asdofhsdfongd
      child: Stack(
        fit: StackFit.expand,
        children: [
          CupertinoTextField(
            autofocus: autoFocus,
            autocorrect: autoCorrect,
            placeholder: placeholder,
            obscureText: obscureText,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            onEditingComplete: onEditingComplete,
            onChanged: onChanged,
            decoration: const BoxDecoration(
              color: AppColors.gray,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              /*
            border: snapshot.data!
                ? null
                : Border.all(
                    color: AppColors.red,
                    width: 1,
                  ),*/
            ),
          ),
          const Visibility(
            visible: false, // TODO validate
            child: Align(
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
