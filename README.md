# dart_counter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

flutter pub run easy_localization:generate -S assets/languages -f keys -o locale_keys.g.dart

flutter pub run build_runner watch --delete-conflicting-outputs

flutter pub run easy_localization:generate -S assets/languages  

// 6. refactor application layer
// 7. refactor presentation layer
// 8. optimize infrastructor layer depending on how good it works with application layer
// e.g better failures, better binding between the 2 layers

// 9. add chache to infrastructure layer
// 10. add logging to whole app
// 11. fix all TODOs
// 14. write tests and optimize software structure for best testability

// Join game and accept invitation are 2 different client side actions that have both to be send
// thats not clean maybe do it server side with 1 call
// find solution to convert enums e.g a framwork who simulates enums + their conversion or nativ dart feature 
// on not mocked facades rethrow all errors  e.g NOTAUTHERROR
// TODO implement playonline facade cleanr with error throwing etc
// TODO implement macked playonline + play offline facade with behaivor sobject holding ex.game

// TODO in apppage widget add bool for fullscreen loading animation make loading part of apppage
// TODO organize presentation layer better use 'part of' and _ to organize subwidgets into seperate files and scope their visibility

// in user invitations and friend facades us the behaivour subject as single source of truth
// to does user facade even need to listen to server or is a single fetch enough when updated on cleint correctly if email change or someting like this THIS MIGHT BE BULLSHIT xD

// TODO social sign in in mocked auth facade popover
// TODO maybe make friends and inviations mock facade like user facade to use behaivor subject as single sourece of truth

// TODO update comments in facades related to failure or real return value

// Blocs failure not object concrete type pls

// normalize naming

// TODO privacy/visibility of bloc events/states and whole orga of presentation layer with privacy/visibility

TODO import flutter bloc not bloc in bloc

TODO handle error thrown by behaivour subject.value


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

// TODO sub pages part of flow or not => leads to parent flow having all other as part

// TODO privacy in sub widgets and modals and pages

// sub pageroute dublicate naming in router.dart generate

// TODO LOCAL NOT LOCALE