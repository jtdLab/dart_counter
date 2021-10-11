// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// TODO extract and abstract more + refactor
class AppSearchField<T> extends StatefulWidget {
  final List<T> Function(String) onSearch;
  final Widget Function(BuildContext, T) itemBuilder;

  final bool autoFocus;
  final bool autoCorrect;
  final String placeholder;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final VoidCallback? onEditingComplete;

  const AppSearchField({
    required this.onSearch,
    required this.itemBuilder,
    this.autoFocus = false,
    this.autoCorrect = false,
    this.placeholder = '',
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.onEditingComplete,
  });

  @override
  _AppSearchFieldState<T> createState() => _AppSearchFieldState<T>();
}

class _AppSearchFieldState<T> extends State<AppSearchField<T>> {
  late GlobalKey actionKey;
  late double width, height, xPosition, yPosition;
  late OverlayEntry floatingDropDown;

  late List<T> searchResults;

  @override
  void initState() {
    actionKey = LabeledGlobalKey('SearchFieldKey');
    super.initState();
  }

  OverlayEntry _createFloatingDropDown() {
    return OverlayEntry(builder: (context) {
      return Positioned(
        left: xPosition,
        width: width,
        top: yPosition + height,
        height: 4 * height + 445,
        child: DropDown<T>(
          itemBuilder: widget.itemBuilder,
          searchResults: searchResults,
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
                searchResults = widget.onSearch(text);
                if (searchResults.isEmpty) {
                  floatingDropDown.remove();
                } else {
                  findDropDownData();
                  floatingDropDown = _createFloatingDropDown();
                  Overlay.of(context)?.insert(floatingDropDown);
                }
              });
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

class DropDown<T> extends StatelessWidget {
  final Widget Function(BuildContext, T) itemBuilder;
  final List<T> searchResults;

  const DropDown({
    Key? key,
    required this.itemBuilder,
    required this.searchResults,
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
              for (int i = 0; i < searchResults.length; i++)
                itemBuilder(context, searchResults[i])
            ],
          ),
        ],
      ),
    );
  }
}
