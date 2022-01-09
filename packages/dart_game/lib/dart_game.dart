library dart_game;

// IMPORTS
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:dart_game/util/dart_utils.dart';
import 'package:dart_game/util/finish_recommendation.dart';
import 'package:dart_game/util/throw_generator.dart';
import 'package:dartz/dartz.dart';

import 'core/abstract_game.dart';
import 'core/abstract_player.dart';
import 'core/dart.dart';
import 'core/status.dart';
import 'core/throw.dart';

// EXPORTS
export 'core/dart.dart';
export 'core/status.dart';
export 'core/throw.dart';

part 'core/standard/dartbot.dart';
part 'core/standard/game.dart';
part 'core/standard/leg.dart';
part 'core/standard/player.dart';
part 'core/standard/set.dart';
