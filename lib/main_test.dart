import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dart_counter/domain/connectivity/i_connectivity_service.dart';
import 'package:dart_counter/infrastructure/play/abstract_game_snapshot_dto.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_game/dart_game.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:http/http.dart' as http;

import 'presentation/core/app_widget/app_widget.dart';
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

  /**
   * final connectivity = getIt<Connectivity>();
  final internetConnectionChecker = getIt<InternetConnectionChecker>();

  connectivity.onConnectivityChanged.listen((event) async {
    print('Connectivity changed: $event');
    final cony = await connectivity.checkConnectivity();
    if (cony != ConnectivityResult.none) {
      print((await http.get(Uri.parse('https://www.google.de'))).statusCode);
      return;
    }
    print('Inet: false');
  });

   */

  runApp(
    AppWidget(),
  );
}
