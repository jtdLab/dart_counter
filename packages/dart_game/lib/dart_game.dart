library dart_game;

// TODO fix exports and import here and in tests

import 'dart:math';
import 'package:collection/collection.dart';
import 'core/abstract_player.dart';
import 'core/abstract_game.dart';
import 'package:dart_game/util/throw_generator.dart';
import 'package:dartz/dartz.dart';
import 'core/status.dart';
import 'core/throw.dart';
import 'core/dart.dart';
import 'package:dart_game/util/dart_utils.dart';
import 'package:dart_game/util/finish_recommendation.dart';

export 'core/dart.dart';
export 'core/throw.dart';
export 'core/status.dart';

part 'core/standard/dartbot.dart';
part 'core/standard/game.dart';
part 'core/standard/leg.dart';
part 'core/standard/player.dart';
part 'core/standard/set.dart';
