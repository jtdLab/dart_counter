import 'package:auto_route/auto_route.dart';
import 'package:dart_counter/presentation/ios/core/auth_widget.dart';
import 'package:dart_counter/presentation/ios/home/home_page.dart';

@CupertinoAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: AuthWidget,
      initial: true,
    ),
    AutoRoute(
      page: HomePage,
    ),
  ],
)
class $Router {}
