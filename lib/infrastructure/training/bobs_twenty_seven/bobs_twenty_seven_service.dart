
import 'package:dart_counter/domain/training/bobs_twenty_seven.dart/i_bobs_twenty_seven_service.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_game/bobs_twenty_seven_game.dart' as ex;

@Environment(Environment.dev)
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IBobsTwentySevenService)
class BobsTwentySevenService implements IBobsTwentySevenService {}
