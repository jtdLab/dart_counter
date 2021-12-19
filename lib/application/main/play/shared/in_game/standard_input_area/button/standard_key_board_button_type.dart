part of 'standard_key_board_button_cubit.dart';

// TODO test

/// This enum contains one element for each button part of the StandardKeyBoard
enum StandardKeyBoardButtonType {
  check,
  erease,
  zero,
  one,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine
}

/// Extension to convert [StandardKeyBoardButtonType] to digit
extension StandardKeyBoardButtonTypeX on StandardKeyBoardButtonType {
  int toDigit() {
    switch (this) {
      case StandardKeyBoardButtonType.zero:
        return 0;
      case StandardKeyBoardButtonType.one:
        return 1;
      case StandardKeyBoardButtonType.two:
        return 2;
      case StandardKeyBoardButtonType.three:
        return 3;
      case StandardKeyBoardButtonType.four:
        return 4;
      case StandardKeyBoardButtonType.five:
        return 5;
      case StandardKeyBoardButtonType.six:
        return 6;
      case StandardKeyBoardButtonType.seven:
        return 7;
      case StandardKeyBoardButtonType.eight:
        return 8;
      case StandardKeyBoardButtonType.nine:
        return 9;
      default:
        throw Error(); // TODO better name
    }
  }
}
