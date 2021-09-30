# dart_counter

DartCounter for Android and iOS.

## Important commands for development

flutter pub run easy_localization:generate -S assets/languages -f keys -o locale_keys.g.dart

flutter pub run build_runner watch --delete-conflicting-outputs

flutter pub run easy_localization:generate -S assets/languages

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
// find solution to convert enums e.g a framwork who simulates enums + their conversion or nativ dart feature
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
SHARED WIDGETS
LOCALE WIDGETS

# MODAL:

CORE
OTHER
BLOCS
SHARED WIDGETS
LOCALE PAGES + WIDGETS
