import 'package:dart_counter/presentation/android/core/core.dart';

// TODO impl
class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    d
    return MaterialApp(
      title: 'DartCounter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: Text('DartCounter Android'),
        ),
      ),
    );
  }
}
