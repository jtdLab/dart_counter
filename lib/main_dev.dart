import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
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
import 'generated/codegen_loader.g.dart';
import 'presentation/core/app_widget.dart';

bool x = true;
Future<void> main() async {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    null,
    customRefinedBreakpoints: const RefinedBreakpoints(mobileNormal: 360),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureInjection(Environment.dev);
  await Firebase.initializeApp();

  FirebaseFunctions.instance
      .useFunctionsEmulator(origin: 'http://localhost:5002');
  FirebaseAuth.instance.useEmulator('http://localhost:9099');
  //FirebaseStorage.instance.useEmulator(host: "localhost", port: 9199);
  FirebaseFirestore.instance.settings = Settings(
      host: Platform.isAndroid ? '10.0.2.2:8080' : 'localhost:8080',
      sslEnabled: false,
      persistenceEnabled: false);
  //getIt<IAuthFacade>().signOut();
  runApp(AppWidget(),);
  /*
  runApp(
    CupertinoApp(
      home: CupertinoPageScaffold(
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      // A fixed-height child.
                      color: const Color(0xffeeee00), // Yellow
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
                    
                    Container(
                      // Another fixed-height child.
                      color: const Color(0xff008000), // Green
                      height: 1200.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
  */
}
