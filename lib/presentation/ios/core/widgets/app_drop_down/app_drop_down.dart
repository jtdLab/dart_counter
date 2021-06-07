import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/layout/app_column.dart';
import 'package:dart_counter/presentation/ios/core/widgets/rounded_image.dart';
import 'package:flutter/material.dart' hide Orientation, IconButton;

class AppDropDown extends StatefulWidget {
  final String text;

  const AppDropDown({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  _AppDropDownState createState() => _AppDropDownState();
}

class _AppDropDownState extends State<AppDropDown> {
  late GlobalKey actionKey;
  late double width, height, xPosition, yPosition;
  bool isDropDownOpened = false;
  late OverlayEntry floatingDropDown;

  @override
  void initState() {
    actionKey = LabeledGlobalKey(widget.text);
    super.initState();
  }

  OverlayEntry _createFloatingDropDown() {
    return OverlayEntry(builder: (context) {
      return Positioned(
        left: xPosition,
        width: width,
        top: yPosition + height,
        height: 4 * height + 45,
        child: DropDown(
          itemHeight: height,
        ),
      );
    });
  }

  void findDropDownData() {
    RenderBox renderBox =
        actionKey.currentContext!.findRenderObject()! as RenderBox;
    width = renderBox.size.width;
    height = renderBox.size.height;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: actionKey,
      onTap: () {
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
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
          ],
        ),
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
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        AppColumn(
          spacing: 6,
          children: [
            AppCardItem.large(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                    ),
                    child: const RoundedImage.small(
                      imageName: AppImages.photo_placeholder_new,
                    ),
                  ),
                  Text(
                    'Anis Abi'.toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 16,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        AppImages.add_new,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppCardItem.large(
              content: Row(
                children: [],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
