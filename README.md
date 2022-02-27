# dart_counter

DartCounter for Android and iOS.

## Important commands for development

// run test
flutter test --coverage

// remove certain files from coverage
lcov --remove coverage/lcov.info 'lib/mock/_' 'lib/utils/l10n/_' 'lib/utils/colors.dart' -o coverage/new_lcov.info

// generate html view
genhtml coverage/lcov.info -o coverage/output/

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

TODO marks invitations and friendrequest as read doesnt work

page transitions with better effects could be done e.g from auth_flow to main_flow after sign in or other

the routing now works well with the seperate flow widgets to give the chance of providing a bloc for a flow -> can this approach be optimized and fewer boilerplate flow code can be written or is the current approach the best possible to fill all requirements
(maybe evaluated the package flow_builder to replace all of this in future projects)

// TODO carrerstats and otther domain objects should validate them selfe ??

// Throw.zero get autofilled and darts on double are 3 by user then there is error in model
// => Throw.zero needs to be modeled better // this is solved by filling Dart(type: double, value 0);

at undo detailed remove throw and load old into dart and points displayer

// TODO all code generation should be done in generated folder

// TODO https://pub.dev/packages/freezed#run-the-generator
also importing package:flutter/foundation.dart.
The reason being, importing foundation.dart also imports classes to make an object nicely readable in Flutter's devtool.

// add loging
info here :
https://sematext.com/blog/logging-levels/
https://sematext.com/blog/best-practices-for-efficient-log-management-and-monitoring/#toc-5-use-the-proper-log-level-4

// TODO better DI look at mocked auth service e.g @factoryMethod

// TODO bloc and widget sharing with shared folder or not consistence over whole project todo

// TODO add convenience constructors Dart.zero and Throw.zero ???

// TODO blocs.dart barelle files like in score training with standard and detailed input area every wher in app pls

// TODO share even more around blocs by sharing event handler impl or make base calss that impls some event handlers if tahts possible with darts

// TODO double general what to display in input rows input field ???
// TODO double keyboard bloc
// TODO double inputrow bloc

// TODO trainig and play service should return not void but bool or smth that indicated the method got performed successfully or not

!!!!!!! import strucural approach needed who notify who (bloc level) !!!!!!!!!!!!!!!!!
// TODO input row input changed event never used ??
// and should it be used and not calc input depeding on icoming dependencies like dart displayer

// remove input changed handler in some input row blocs

// TODO play online/offline detailed input area input row commit pressed
// TODO play online/offline detailed keyboard blocs

// TODO inject dart displayer bloc correctly into ui in play and training

// TODO watcher cubits 1 base watcher cubit

// in blocs that use super bloc call to close needed ?

blocTest<DartsDisplayerBloc, DartsDisplayerState>(
'cancels the training when Canceled was added',
setUp: () {
when(() => trainingService.cancel());
},
build: () => InTrainingBloc(trainingService),
act: (bloc) => bloc.add(const InTrainingEvent.canceled()),
verify: (\_) => verify(() => trainingService.cancel()).called(1),
);

// TODO setup of all tests

\_singleTrainingService.createGame(
// TODO is this correctly a failure in service or not rethink in general for services failures are at runtime errors at dev time
owner: \_userService.getUser().getOrElse(
() => throw ApplicationError.unexpectedMissingUser(),
),
),

          // TODO training bloc test strategy black box atm switch to inherited testing like in play section

          // TODO test abstract classes like ingame_bloc_test does

/\*\*

- // TODO move this to repo layer or keep here
  /// Loads and caches image located at [url].
  Future<void> \_fetchImage({
  required String url,
  }) async {
  final Completer<void> completer = Completer<void>();
  final provider = CachedNetworkImageProvider(url);
  provider.resolve(ImageConfiguration.empty).addListener(
  ImageStreamListener((image, synchronousCall) {
  completer.complete();
  }),
  );

  await completer.future;

}
\*/

// TODO use flutter_cache_manager

// TODO training folder structure in application could it be create_game, watcher, in_game
????

// training bloc tests ingame scope of behaivor mocking could be closer

// TODO getit constructor test should not test initial state most classed have a testcase for that remove it in the future

// TODO decide how to test abstract baseclasses
option 1: test functionality of the super class seperate and the inheriting class in 2 
test classes pro: minimal test code
option 2: black box test only inheriting classes con: duplicate test code

=> option 2 is the on to go