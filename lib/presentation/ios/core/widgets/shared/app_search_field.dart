import 'package:dart_counter/presentation/ios/core/core.dart';

import 'app_card/widgets/app_card_item.dart';
import 'app_icon_button.dart';
import 'app_rounded_image.dart';

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
  late GlobalKey actionKey;
  late double width, height, xPosition, yPosition;
  bool isDropDownOpened = false;
  late OverlayEntry floatingDropDown;

  @override
  void initState() {
    actionKey = LabeledGlobalKey('kek'); // TODO random string here
    super.initState();
  }

  OverlayEntry _createFloatingDropDown() {
    return OverlayEntry(builder: (context) {
      return Positioned(
        left: xPosition,
        width: width,
        top: yPosition + height,
        height: 4 * height + 445,
        child: DropDown(
          itemHeight: height,
        ),
      );
    });
  }

  void findDropDownData() {
    final RenderBox renderBox =
        actionKey.currentContext!.findRenderObject()! as RenderBox;
    width = renderBox.size.width;
    height = renderBox.size.height;
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: actionKey,
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
            onChanged: (text) {
              setState(() {
                if (isDropDownOpened) {
                  floatingDropDown.remove();
                } else {
                  findDropDownData();
                  floatingDropDown = _createFloatingDropDown();
                  Overlay.of(context)?.insert(floatingDropDown);
                }

                isDropDownOpened = !isDropDownOpened;
              });
              //widget.onChanged(text);
            },
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

class DropDown extends StatelessWidget {
  final double itemHeight;

  const DropDown({
    Key? key,
    required this.itemHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          AppColumn(
            spacing: 6,
            children: [
              _item(context),
              _item(context),
              _item(context),
              _item(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _item(BuildContext context) => AppCardItem.large(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 16,
              ),
              child: AppRoundedImage.small(
                imageName: AppImages.photo_placeholder_new,
              ),
            ),
            Text(
              'Anis Abi'.toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
              ),
              child: AppIconButton(
                onPressed: () {},
                icon: Image.asset(
                  AppImages.add_new,
                ),
              ),
            ),
          ],
        ),
      );
}
