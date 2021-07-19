import 'package:dart_counter/application/friends/search_user/search_user_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_text_field/app_text_field.dart';

class Item {
  final String name;

  const Item({
    required this.name,
  });
}

class SearchUserWidget extends StatefulWidget {
  const SearchUserWidget({
    Key? key,
  }) : super(key: key);

  @override
  _SearchUserWidgetState createState() => _SearchUserWidgetState();
}

class _SearchUserWidgetState extends State<SearchUserWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchUserBloc, SearchUserState>(
      builder: (context, state) {
        final searchResults = state.searchResults;
        return AppColumn(
          spacing: widget.size6(context),
          children: [
            AppTextField(
              placeholder: LocaleKeys.searchUser.tr().toUpperCase(),
              onChanged: (newSearchString) {
                context.read<SearchUserBloc>().add(
                      SearchUserEvent.searchStringChanged(
                        newSearchString: newSearchString,
                      ),
                    );
              },
            ),
            if (searchResults.isEmpty()) ...[
              const Expanded(
                child: Center(
                  child: Text('No results'),
                ),
              )
            ] else
              for (final searchResult in searchResults.iter) _item(context, searchResult.username.getOrCrash())
          ],
        );
      },
    );
  }

/**
// TODO implement
class SearchUserWidget extends StatefulWidget {
  const SearchUserWidget({
    Key? key,
  }) : super(key: key);

  @override
  _SearchUserWidgetState createState() => _SearchUserWidgetState();
}

class _SearchUserWidgetState extends State<SearchUserWidget> {
  List<Item> searchResults = [];

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: widget.size6(context),
      children: [
        AppTextField(
          placeholder: LocaleKeys.searchUser.tr().toUpperCase(),
          onChanged: (newSearchString) {
            setState(() {
              if (newSearchString.isEmpty) {
                searchResults = [];
              } else {
                searchResults = [
                  Item(
                    name: newSearchString,
                  ),
                  Item(
                    name: newSearchString + '8',
                  ),
                  Item(
                    name: newSearchString + '9',
                  ),
                  Item(
                    name: newSearchString + '8',
                  ),
                  Item(
                    name: newSearchString + '9',
                  ),
                  Item(
                    name: newSearchString + '8',
                  ),
                  Item(
                    name: newSearchString + '9',
                  ),
                  Item(
                    name: newSearchString + '9',
                  ),
                 
                ];
              }
            });
          },
        ),
        if (searchResults.isEmpty) ...[
          const Expanded(
            child: Center(
              child: Text('No results'),
            ),
          ),
        ] else
          for (final searchResult in searchResults)
            _item(context, searchResult.name),
      ],
    );
  }
*/
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
