import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dart_counter/injection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import 'presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureInjection(Environment.dev);
  await Firebase.initializeApp();
  // TODO maybe use 10.0.2.2 on android for every emulator
  FirebaseAuth.instance.useEmulator('http://localhost:9099');
  FirebaseFirestore.instance.settings = Settings(
      host: Platform.isAndroid ? '10.0.2.2:8080' : 'localhost:8080',
      sslEnabled: false,
      persistenceEnabled: false);
  FirebaseFunctions.instance
      .useFunctionsEmulator(origin: 'http://localhost:5002');
  runApp(
    AppWidget(),
  );
}
