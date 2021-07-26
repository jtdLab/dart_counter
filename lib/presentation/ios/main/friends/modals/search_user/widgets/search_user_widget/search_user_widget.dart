import 'package:dart_counter/application/friends/search_user/search_user_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

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
              onClear: () => context.read<SearchUserBloc>().add(
                    const SearchUserEvent.clearSearchStringPressed(),
                  ),
              showClear: true,
              placeholder: LocaleKeys.searchUser.tr().toUpperCase(),
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
                            spacing: widget.size6(context),
                            children: searchResults
                                .map(
                                  (item) => UserItem(
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
          ],
        );
      },
    );
  }
}
