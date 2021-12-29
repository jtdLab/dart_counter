# dart_counter

DartCounter for Android and iOS.

## Important commands for development

flutter pub run easy_localization:generate -S assets/languages -f keys -o locale_keys.g.dart
flutter pub run build_runner watch --delete-conflicting-outputs
flutter pub run easy_localization:generate -S assets/languages

// TODO 2. SearchUser 3. Profile + all sub pages 4. Play 5. Trainings area

// TODO CLEAN BLOC EVENT AND STATE VISIBILITY AND NAMING

## TODOS

// 5. determine failures in domain ref to 8.
// 6. refactor application layer
// 7. refactor presentation layer
// 8. optimize infrastructor layer depending on how good it works with application layer
// e.g better failures, better binding between the 2 layers

// 9. add chache to infrastructure layer and refactor it to be stateless
// 10. add logging to whole app
// 11. fix all TODOs
// 14. write tests and optimize software structure for best testability

// Join game and accept invitation are 2 different client side actions that have both to be send
// thats not clean maybe do it server side with 1 call

// find solution to convert enums to json e.g a framwork who simulates enums + their conversion or nativ dart feature
// on not mocked facades rethrow all errors e.g NOTAUTHERROR
// implement playonline facade cleaner with error throwing etc
// in apppage widget add bool for fullscreen loading animation make loading part of apppage
// social sign in in mocked auth facade popover
// update comments in facades related to failure or real return value
// Blocs failure not object concrete type pls
// normalize naming game-invitation invitation and other
// privacy/visibility of bloc events/states and whole orga of presentation layer with privacy/visibility
// import flutter bloc not bloc in bloc
// handle error thrown by behaivour subject.value
// maybe splitt big widgets.dart file into sub files with part and part of e.g ingame/widgets.dart

// TODO clean up font sizes and use only autosizeText
// TODO atm input area blocs have to sync input value of ingamebloc thats not good
// If detailed keyboard checkout details modal gets shown for no reason look handy screenshot
// clear cache on signout
// TODO move owner/creator offline game to play bloc from facade

## IMPORT STRUCTURE OF PRESENTATION LAYER

# FLOW:

CORE
OTHER
BLOCS
PAGES

# PAGE:

CORE
OTHER
BLOCS
DOMAIN
MODALS
LOCALE WIDGETS

# MODAL:

CORE
OTHER
BLOCS
LOCALE PAGES + WIDGETS

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
test('constructor', () {
// TODO implement test
});

test('fromDomain', () {
// TODO implement test
});

test('toDomain', () {
// TODO implement test
});

test('fromJson', () {
// TODO implement test
});

test('toJson', () {
// TODO implement test
});

test('constructor', () {
// TODO implement test
});
}

// TODO why need freezd classes to explicit implement interface e.g "implements AbstractPlayerSnapshotDto" this should be done by freezed already

// TODO renaem abstract players and player snapshots or game and gamesnpashot in domain and infrato IPlayer or IGame or other nameing

// TODO game folder all in gamehistory expect dart and throw becaus they are shared in play and training ???ß

// training game/player snapshot single remove initial() methods

IMPORTANT what can be done better:
HOW BLOCS AND DEPENDENCIES GET INJECTED
TEST descriptions
BLOCBUILDER more close to location where the data they provide is needed and not wrap whole bunch of non depending widgets

// THERE is a probleme with Dart(value:0);
// when doing filling and dartsOnDouble dialog
// needs to be implemented specialliy in external modal


import 'package:dart_counter/application/main/game_history/game_history_bloc.dart';
import 'package:dart_counter/domain/game_history/i_game_history_service.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUserService extends Mock implements IUserService {}

class MockGameHistoryService extends Mock implements IGameHistoryService {}

void main() {
  late MockUserService mockUserService;
  late MockGameHistoryService mockGameHistoryService;

  setUp(() {
    mockUserService = MockUserService();
    mockGameHistoryService = MockGameHistoryService();
  });

  test('initial state is TODO', () {
    // Arrange & Act
    final underTest = GameHistoryBloc(
      mockUserService,
      mockGameHistoryService,
    );

    // Assert
    expect(
      underTest.state,
      null, // TODO
    );
  });
}


TODO the comibination of multiple source streams is not implemented consitently in blocs 

make extension part of the class the extend part and part of statments