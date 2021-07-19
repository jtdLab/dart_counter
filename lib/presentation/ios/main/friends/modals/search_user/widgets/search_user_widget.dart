import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_search_field.dart';

class Item {
  final String name;

  const Item({
    required this.name,
  });
}

// TODO implement
class SearchUserWidget extends StatelessWidget {
  const SearchUserWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        AppSearchField<Item>(
          placeholder: LocaleKeys.searchUser.tr().toUpperCase(),
          onSearch: (newSearchString) {
            print(newSearchString);
            return [
              Item(
                name: newSearchString,
              ),
              Item(
                name: newSearchString + '8',
              ),
              Item(
                name: newSearchString + '9',
              ),
            ];
          },
          itemBuilder: (context, item) {
            return _item(context, item.name);
          },
        ),
        Expanded(
          child: Center(
            child: Text('No results'),
          ),
        ),
      ],
    );
  }

  Widget _item(BuildContext context, String name) => AppCardItem.large(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 16,
              ),
              child: AppRoundedImage.small(
                imageName: AppImages.photoPlaceholderNew,
              ),
            ),
            Text(
              name.toUpperCase(),
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
                  AppImages.addNew,
                ),
              ),
            ),
          ],
        ),
      );
}
