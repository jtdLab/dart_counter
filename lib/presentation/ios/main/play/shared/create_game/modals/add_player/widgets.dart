part of 'add_player_modal.dart';

// TODO impl

// BODY
class _AddPlayerWidget extends StatefulWidget {
  const _AddPlayerWidget({
    Key? key,
  }) : super(key: key);

  @override
  _AddPlayerWidgetState createState() => _AddPlayerWidgetState();
}

class _AddPlayerWidgetState extends State<_AddPlayerWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPlayerBloc, AddPlayerState>(
      builder: (context, state) {
        //final searchResults = state.searchResults;

        return AppColumn(
          spacing: size6(context),
          children: [
            AppTextField(
              /** // TODo
              *  onClear: () => context.read<SearchUserBloc>().add(
                    const SearchUserEvent.clearSearchStringPressed(),
                  ),
              */
              showClear: true,
              placeholder: context.l10n.searchUser.toUpperCase(),
              onChanged: (_) {}, // TODO
              /**
               * onChanged: (newSearchString) {
                context.read<SearchUserBloc>().add(
                      SearchUserEvent.searchStringChanged(
                        newSearchString: newSearchString,
                      ),
                    );
              },
               */
            ),
            /*Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) => SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: constraints.copyWith(
                      maxHeight: constraints.maxHeight +
                          MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: Builder(
                      builder: (context) {
                        if (searchResults.isEmpty()) {
                          return const Center(
                            child: Text('No results'), // TODO translate
                          );
                        } else {
                          return AppColumn(
                            spacing: size6(context),
                            children: searchResults
                                .map(
                                  (item) => _UserItem(
                                    name: item.username.getOrCrash(),
                                  ),
                                )
                                .asList(),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ),
            ),
            */
          ],
        );
      },
    );
  }
}

class _UserItem extends StatelessWidget {
  final String name;

  const _UserItem({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCardItem.large(
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
              onPressed: () {}, // TODO
              icon: Image.asset(
                AppImages.addNew,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
