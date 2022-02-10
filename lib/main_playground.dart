// coverage:ignore-file

import 'package:dart_counter/presentation/ios/core/core.dart';

class Name with ChangeNotifier {
  int _value = 5;
  String value2 = 'FFFFF';

  set value(int newValue) {
    _value = newValue;
    notifyListeners();
  }

  int get value => _value;
}

void main() {
  final name = Name();

  runApp(
    CupertinoApp(
      home: CupertinoPageScaffold(
        child: ChangeNotifierProvider.value(
          value: name,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SuperWidget(),
              CupertinoButton(
                child: const Text('Press me'),
                onPressed: () => name.value = 88,
              )
            ],
          ),
        ),
      ),
    ),
  );
}

class SuperWidget extends StatelessWidget {
  const SuperWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('rebuilt $runtimeType');

    return Column(
      children: [
        SubWidget(
          value: context.watch<Name>().value,
        ),
        const SubWidget(
          value: 0,
        ),
      ],
    );
  }
}

class SubWidget extends StatelessWidget {
  final int value;

  const SubWidget({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('rebuilt $runtimeType $value');

    return Text(value.toString());
  }
}


/** 
Future<void> main() async {
  timeago.setLocaleMessages('de', DeMessages());
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    null,
    customRefinedBreakpoints: const RefinedBreakpoints(mobileNormal: 360),
  );
  WidgetsFlutterBinding.ensureInitialized();
  /**
   * await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
   */
  await EasyLocalization.ensureInitialized();
  configureInjection(Environment.test);
  await Firebase.initializeApp();

  FirebaseFunctions.instance.useFunctionsEmulator('localhost', 5002);
  FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  FirebaseStorage.instance.useStorageEmulator('localhost', 9199);
  FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);

  runApp(
    CupertinoApp(
      home: AppPage(
        child: Container(
          color: AppColors.green,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.red,
                  border: Border.all(width: 4),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: AppColors.yellow,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: AppColors.blue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
  //print(credential);

  //final doc = await FirebaseFirestore.instance.collection('c').doc('d').get();

  /**
   * final doc = await FirebaseFirestore.instance
      .collection('bengel')
      .doc('afl')
      .snapshots()
     .listen((event) {
       print(event.data());
     });
   */

  //final idToken = await FirebaseAuth.instance.currentUser!.getIdToken();

  /**
   * DartClient client = DartClient(host: 'localhost', port: 7777);
  client.watchGame().listen((event) {
    
  });
  await client.connect(idToken: idToken);
  client.joinGame(gameId: '3J3Kg2gW23R30K4c');

   */

  // runApp(
  //   AppWidget(),
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: AppPage(
        child: Column(
          children: [
            for (int i = 0; i < 5; i++) ...[
              Container(
                color: AppColors.red,
                height: 100,
              ),
              Container(
                color: AppColors.green,
                height: 100,
              ),
            ]
          ],
        ),
      ),
    );
  }
}
**/
/**
 * import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/app_navigation_bar.dart';

class AppPage extends StatelessWidget {
  final VoidCallback? onTap;
  final double? maxHeight;
  final AppNavigationBar? navigationBar;
  final Widget child;

  const AppPage({
    Key? key,
    this.maxHeight,
    this.navigationBar,
    required this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CupertinoPageScaffold(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
            child: Column(
              children: [
                navigationBar ?? Container(),
                const AppSpacer.large(),
                Expanded(
                  child: SingleChildScrollView(
                    child: IntrinsicHeight(
                      child: child,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

 */
