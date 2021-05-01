import 'package:auto_route/auto_route.dart';
import 'package:dart_counter/presentation/ios/core/auth_widget.dart';
import 'package:dart_counter/presentation/ios/home/home_page.dart';
import 'package:dart_counter/presentation/ios/splash/splash_page.dart';

@CupertinoAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: SplashPage,
    ),
    AutoRoute(
      page: AuthWidget,
    ),
    AutoRoute(
      page: HomePage,
    ),
  ],
)
class $Router {}
