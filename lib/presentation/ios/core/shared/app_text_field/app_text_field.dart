// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// LOCAL WIDGETS
part 'widgets.dart';

// TODO impl cleaner
// TODO to complex widget? maybe split error and text input into seperate widgets
// TODO assert error message is provided if validation is applied // TODO has it real to be stateful
class AppTextField extends StatefulWidget {
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
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  final TextEditingController _controller =
      TextEditingController(); // TODO better solution available ?

  @override
  void initState() {
    _controller.text = widget.text; // NEEDED ? to initialize it here or what
    super.initState();
  }

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
                controller: _controller,
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
                  border: (widget.withErrorDisplayer) && !(widget.valid ?? true)
                      ? Border.all(
                          color: AppColors.red,
                          width: border4(context),
                        )
                      : Border.all(
                          width: border4(context),
                        ),
                ),
              ),
              if (widget.showClear && _controller.text.isNotEmpty) ...[
                Align(
                  alignment: Alignment.centerRight,
                  child: CupertinoButton(
                    padding: EdgeInsets.only(right: size6(context)),
                    onPressed: () {
                      _controller.clear();
                      widget.onClear?.call();
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
                visible: !(widget.valid ?? true),
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
