import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

import 'main_common.dart';

Future<void> main() async {
  await mainCommon(Environment.prod);
}
