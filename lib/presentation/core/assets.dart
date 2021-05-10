import 'dart:ui' show Color;
import 'package:flutter/widgets.dart';

abstract class AppImages {
  static const logo = 'assets/images/png/logo.png';
  static const adBanner = 'assets/images/png/adBanner.png';
  static const facebook = 'assets/images/png/facebook.png';
  static const instagram = 'assets/images/png/instagram.png';
   static const youtube = 'assets/images/png/youtube.png';
  static const google = 'assets/images/png/google.png';
  static const target = 'assets/images/png/target.png';
  static const win = 'assets/images/png/win.png';
  static const defeat = 'assets/images/png/defeat.png';
  static const trendUp = 'assets/images/png/trend_up.png';
  static const trendDown = 'assets/images/png/trend_down.png';
  static const delete = 'assets/images/png/delete.png';
  static const photoPlaceholder = 'assets/images/png/photoPlaceholder.png';
  static const bot = 'assets/images/png/bot.png';
  static const iconFacebook = 'assets/images/png/icon_facebook.png';
  static const iconFriends = 'assets/images/png/icon_friends.png';
  static const iconInstagram = 'assets/images/png/icon_instagram.png';
  static const iconInvite = 'assets/images/png/icon_invite.png';
  static const iconSettings = 'assets/images/png/icon_settings.png';
  static const iconYoutube = 'assets/images/png/icon_youtube.png';
}

abstract class AppColors {
  static const Color transparent = Color(0x00000000);
  static const Color black = Color.fromRGBO(0, 0, 0, 1.0);
  static const Color black1 = Color.fromRGBO(22, 20, 20, 1.0);
  static const Color black2 = Color.fromRGBO(52, 52, 50, 1.0);
  static const Color blue = Color.fromRGBO(0, 122, 255, 1.0);
  static const Color gray = Color.fromRGBO(228, 228, 228, 1.0);
  static const Color green = Color.fromRGBO(50, 164, 79, 1.0);
  static const Color red = Color.fromRGBO(204, 40, 28, 1.0);
  static const Color white = Color.fromRGBO(255, 255, 255, 1.0);
  static const Color yellow = Color.fromRGBO(245, 189, 68, 1.0);
}

abstract class AppFontSizes {
  static const mini = 9.0;
  static const small = 14.0;
  static const smallMedium = 17.0;
  static const medium = 23.0;
  static const bigMedium = 37.0;
  static const big = 60.0;
  static const large = 80.0;

  static const defaultTextStyle = TextStyle();
}
