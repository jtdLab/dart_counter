part of '../forgot_password_modal.dart';

class _InitialPage extends StatelessWidget {
  const _InitialPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      onTap: () => FocusScope.of(context).unfocus(),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final bottomInsets = MediaQuery.of(context).viewInsets.bottom;
          return SingleChildScrollView(
            physics:
                bottomInsets == 0 ? const NeverScrollableScrollPhysics() : null,
            child: ConstrainedBox(
              constraints: constraints.copyWith(
                maxHeight: constraints.maxHeight + bottomInsets,
              ),
              child: const _InitialWidget(),
            ),
          );
        },
      ),
    );
  }
}
