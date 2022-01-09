part of '../../dart_game.dart';

// TODO optimize multiple calls to the same getter in a method

class DartBot extends Player {
  int targetAverage;

  /// Creates an empty dartBot with given [targetAverage].
  ///
  /// {@template dartBot_constructor_error}
  /// Throws [ArgumentError] if try to create invalid dartBot.
  /// {@endtemplate}
  DartBot({
    this.targetAverage = 10,
  }) : super(
          id: 'dartBot',
        ) {
    _validate();
  }

  /// Creates a dartbot with given [legsOrSetsNeededToWin], [isCurrentTurn], [legsOrSets]
  /// and [targetAverage].
  ///
  /// {@macro dartBot_constructor_error}
  DartBot.fromData({
    int? legsOrSetsNeededToWin,
    bool? isCurrentTurn,
    Either<List<Leg>, List<Set>>? legsOrSets,
    required this.targetAverage,
  }) : super.fromData(
          id: 'dartBot',
          legsOrSetsNeededToWin: legsOrSetsNeededToWin,
          isCurrentTurn: isCurrentTurn,
          legsOrSets: legsOrSets,
        ) {
    _validate();
  }

  /**
   * ##############################
   * ########## INTERNAL ##########
   * ##############################
   */

  /// Validates this dartBot.
  ///
  /// Throws an [ArgumentError] in following cases:
  /// 1. [targetAverage] is < 10.
  /// 2. [targetAverage] is > 150.
  /// 3. Is invalid [Player].
  _validate() {
    if (targetAverage < 10) {
      throw ArgumentError.value(
        targetAverage,
        'targetAverage',
        'Target average mustn`t be less than 10.',
      );
    }
    if (targetAverage > 150) {
      throw ArgumentError.value(
        targetAverage,
        'targetAverage',
        'Target average mustn`t be greater than 150.',
      );
    }

    super._validate();
  }

  @override
  String toString() {
    return 'DartBot{id: ${this.id}, name: $name, targetAverage: $targetAverage, won: $won, '
        'isCurrentTurn: $isCurrentTurn, wonSets: $wonSets, wonLegsCurrentSet: $wonLegsCurrentSet, '
        'pointsLeft: $pointsLeft, lastPoints: $lastPoints, finishRecommendation: $finishRecommendation, '
        'dartsThrownCurrentLeg: $dartsThrownCurrentLeg, average: $average, '
        'checkoutPercentage: $checkoutPercentage}';
  }
}
