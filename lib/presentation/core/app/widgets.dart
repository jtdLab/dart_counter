part of 'app.dart';

/// Injects common application wide dependencies into the widget tree.
class AppScope<T extends PlatformRouter> extends StatelessWidget {
  final T router;
  final PlatformApp app;

  const AppScope({
    Key? key,
    required this.router,
    required this.app,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider<T>(create: (context) => router),
        Provider.value(value: AppToast.getIt()),
        BlocProvider(
          create: (context) => AuthBloc.getIt()..add(const AuthEvent.started()),
        ),
      ],
      child: app,
    );
  }
}
