import 'package:dart_counter/injection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import 'main_common.dart';

Future<void> main() async {
  await mainCommon(Environment.prod);
  print(getIt<FirebaseAuth>().currentUser);
}
