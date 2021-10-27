library dart_game;

import 'dart:math';
import 'package:collection/collection.dart';
import 'core/abstract_player.dart';
import 'core/abstract_game.dart';
import 'package:dart_game/util/throw_generator.dart';
import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';
import 'core/status.dart';
import 'core/throw.dart';
import 'core/dart.dart';

export 'core/dart.dart';
export 'core/throw.dart';
export 'core/status.dart';

part 'util/dart_utils.dart';
part 'util/finish_recommendation.dart';

part 'core/standard/dartbot.dart';
part 'core/standard/game.dart';
part 'core/standard/leg.dart';
part 'core/standard/player.dart';
part 'core/standard/set.dart';
