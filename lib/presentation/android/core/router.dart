import 'package:dart_counter/presentation/android/core/core.dart';
import 'package:dart_counter/presentation/core/platform_router.dart';
import 'package:dart_counter/presentation/ios/authenticated/authenticated_flow.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/unauthenticated_flow.dart';
import 'package:injectable/injectable.dart';

part 'router.gr.dart';

@CustomAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      page: UnauthenticatedFlow,
    ),
    CustomRoute(
      page: AuthenticatedFlow,
    ),
  ],
)
class _Router extends _$_Router {}

/// The android router.
@android
@lazySingleton
class Router extends _Router implements PlatformRouter {
  Router();

  factory Router.getIt() => getIt<Router>();
}
