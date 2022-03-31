part of 'app.dart';

class AppScope<T extends StackRouter> extends StatelessWidget {
  final T router;
  final Widget app;

  const AppScope({
    Key? key,
    required this.router,
    required this.app,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider<T>.value(value: router),
        BlocProvider(
          create: (context) => AuthBloc.getIt()..add(const AuthEvent.started()),
        ),
      ],
      child: app,
    );
  }
}
