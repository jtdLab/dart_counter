import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/injection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'domain/auth/i_auth_facade.dart';
import 'presentation/core/app_widget/app_widget.dart';

Future<void> main() async {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    null,
    customRefinedBreakpoints: const RefinedBreakpoints(mobileNormal: 360),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureInjection(Environment.test);
  await Firebase.initializeApp();

  FirebaseFunctions.instance.useFunctionsEmulator('localhost', 5002);
  FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  FirebaseStorage.instance.useStorageEmulator('localhost', 9199);
  FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  /**
   * FirebaseFirestore.instance.settings = Settings(
    persistenceEnabled: true,
  ); 
  
  getIt<IAuthFacade>().signOut();
  */

  //final ref = FirebaseStorage.instance.ref('sefssd');
  //await ref.putFile(File('/Users/jonas/Desktop/dart_counter/assets/images/png/accept_new.png'));
  //print(await ref.getDownloadURL());ƒ

  runApp(
    AppWidget(),
  );
}