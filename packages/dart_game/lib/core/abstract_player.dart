import 'package:uuid/uuid.dart';

/// Base class for a player which provides some standard fields and methods to start with.
abstract class AbstractPlayer {
  final String id;
  String? name;
  bool? isCurrentTurn;

  /// Creates an empty player with given [id] and [name].
  AbstractPlayer({
    String? id,
    this.name,
  }) : id = id ?? Uuid().v4();

  AbstractPlayer.fromData({
    String? id,
    required this.name,
    required this.isCurrentTurn,
  }) : id = id ?? Uuid().v4();

  @override
  String toString() {
    return 'Player{id: $id, name: $name, isCurrentTurn: $isCurrentTurn}';
  }
}
