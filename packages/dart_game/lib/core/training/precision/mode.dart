import 'package:dart_game/core/abstract_game.dart';

/// The mode of a [AbstractGame].
///
/// Ascending means starting from 1 going up to 25.
///
/// Descending means starting at 25 going down to 1.
///
/// Random means each valid number from 1 to 25 exactly once but random.
enum Mode { ascending, descending, random }
