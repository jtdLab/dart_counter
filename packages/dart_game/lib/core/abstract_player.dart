import 'package:uuid/uuid.dart';

/// Base class for a player which provides some standard fields and methods to start with.
abstract class AbstractPlayer {
  final String id;
  String? name;
  bool? isCurrentTurn;

  /// Creates a player with given [id] and [name].
  AbstractPlayer({
    String? id,
    this.name,
  }) : id = id ?? Uuid().v4();

  /// Creates a player with given [id], [name] and [isCurrentTurn].
  AbstractPlayer.fromData({
    String? id,
    required this.name,
    required this.isCurrentTurn,
  }) : id = id ?? Uuid().v4();

  @override
  String toString();
}
