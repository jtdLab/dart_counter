part of 'search_user_modal.dart';

class SearchUserView extends StatelessWidget {
  const SearchUserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      padding: modalPagePadding(context),
      onTap: () => FocusScope.of(context).unfocus(),
      child: BlocBuilder<SearchUserBloc, SearchUserState>(
        builder: (context, state) {
          return state.map(
            initial: (initial) {
              return const Center(child: Text('initial - TODO'));
            },
            loadInProgress: (loadInProgress) {
              return const Center(child: Text('loadInProgress - TODO'));
            },
            loadSuccess: (loadSuccess) {
              final searchResults = loadSuccess.searchResults;

              return AppColumn(
                spacing: size6(context),
                children: [
                  AppTextField(
                    onClear: () => context.read<SearchUserBloc>().add(
                          const SearchUserEvent.clearPressed(),
                        ),
                    showClear: true,
                    placeholder: context.l10n.searchUser.toUpperCase(),
                    onChanged: (newSearchString) {
                      context.read<SearchUserBloc>().add(
                            SearchUserEvent.searchStringChanged(
                              newSearchString: newSearchString,
                            ),
                          );
                    },
                  ),
                  Expanded(
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
                                          name: item.name.getOrCrash(),
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
                ],
              );
            },
            loadFailure: (loadFailure) {
              return const Center(child: Text('loadFailure - TODO'));
            },
          );
        },
      ),
    );
  }
}

// BODY
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
