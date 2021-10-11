import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'presentation/core/de_messages.dart';

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
      home: CupertinoPageScaffold(
        child: Center(
          child: Container(
            color: AppColors.red,
            child: AppNavigationBarButton(
              onPressed: () {},
              child: Image.asset(
                AppImages.settingsNew,
              ),
            ),
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
