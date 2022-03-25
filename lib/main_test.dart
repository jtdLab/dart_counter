// coverage:ignore-file

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dart_counter/presentation/core/app_widget/app_widget.dart';
import 'package:dart_counter/presentation/core/de_messages.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeago/timeago.dart' as timeago;

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

  configureInjection(Environment.test);
  await Firebase.initializeApp();

  FirebaseFunctions.instance.useFunctionsEmulator('localhost', 5002);
  FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  FirebaseStorage.instance.useStorageEmulator('localhost', 9199);
  FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);

  /**
   * final connectivity = getIt<Connectivity>();
  final internetConnectionChecker = getIt<InternetConnectionChecker>();

  connectivity.onConnectivityChanged.listen((event) async {
   
    final cony = await connectivity.checkConnectivity();
    if (cony != ConnectivityResult.none) {
    
      return;
    }
    
  });

   */

  runApp(AppWidget());
}
