// coverage:ignore-file // TODO needed ?

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dart_counter/bootstrap.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dart_counter/core/logging.dart';
import 'package:dart_counter/presentation/core/app/app.dart';
import 'package:dart_counter/presentation/core/de_messages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeago/timeago.dart' as timeago;

void main() {
  bootstrap(() async {
    timeago.setLocaleMessages('de', DeMessages());

    ResponsiveSizingConfig.instance.setCustomBreakpoints(
      null,
      customRefinedBreakpoints: const RefinedBreakpoints(mobileNormal: 360),
    );

    /* await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]); */

    configureLogging(Level.INFO);

    configureInjection({
      Environment.test,
      if (Platform.isAndroid) EnvironmentX.android else EnvironmentX.ios
    });

    await Firebase.initializeApp();
    FirebaseFunctions.instance.useFunctionsEmulator('localhost', 5002);
    FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
    FirebaseStorage.instance.useStorageEmulator('localhost', 9199);
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);

    return const App();
  });
}
