part of 'detailed_key_board_button_cubit.dart';

// TODO test

/// This enum contains one element for each button part of the DetailedKeyBoard
enum DetailedKeyBoardButtonType {
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
  nine,
  ten,
  eleven,
  twelve,
  thirteen,
  fourteen,
  fifteen,
  sixteen,
  seventeen,
  eighteen,
  nineteen,
  twenty,
  twentyFive
}

/// Extension to convert [DetailedKeyBoardButtonType] to digit
extension DetailedKeyBoardButtonTypeX on DetailedKeyBoardButtonType {
  static DetailedKeyBoardButtonType fromDigit(int digit) =>
      DetailedKeyBoardButtonType.values.firstWhere((type) {
        if (type != DetailedKeyBoardButtonType.erease) {
          return type.toDigit() == digit;
        }
        return false;
      });

  int toDigit() {
    switch (this) {
      case DetailedKeyBoardButtonType.zero:
        return 0;
      case DetailedKeyBoardButtonType.one:
        return 1;
      case DetailedKeyBoardButtonType.two:
        return 2;
      case DetailedKeyBoardButtonType.three:
        return 3;
      case DetailedKeyBoardButtonType.four:
        return 4;
      case DetailedKeyBoardButtonType.five:
        return 5;
      case DetailedKeyBoardButtonType.six:
        return 6;
      case DetailedKeyBoardButtonType.seven:
        return 7;
      case DetailedKeyBoardButtonType.eight:
        return 8;
      case DetailedKeyBoardButtonType.nine:
        return 9;
      case DetailedKeyBoardButtonType.ten:
        return 10;
      case DetailedKeyBoardButtonType.eleven:
        return 11;
      case DetailedKeyBoardButtonType.twelve:
        return 12;
      case DetailedKeyBoardButtonType.thirteen:
        return 13;
      case DetailedKeyBoardButtonType.fourteen:
        return 14;
      case DetailedKeyBoardButtonType.fifteen:
        return 15;
      case DetailedKeyBoardButtonType.sixteen:
        return 16;
      case DetailedKeyBoardButtonType.seventeen:
        return 17;
      case DetailedKeyBoardButtonType.eighteen:
        return 18;
      case DetailedKeyBoardButtonType.nineteen:
        return 19;
      case DetailedKeyBoardButtonType.twenty:
        return 20;
      case DetailedKeyBoardButtonType.twentyFive:
        return 25;
      default:
        throw Error(); // TODO better Error name
    }
  }
}
