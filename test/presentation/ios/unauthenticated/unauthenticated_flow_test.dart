import 'package:auto_route/auto_route.dart';
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dart_counter/presentation/ios/app.dart';
import 'package:dart_counter/presentation/ios/core/router.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/unauthenticated_flow.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../core/helpers/helpers.dart';
import '../helpers/helpers.dart';

// TODO the auth section is not implemented perfectly when think about routing there is used a pageview so the route structur gets fcked up a bit
void main() {
  late AuthBloc mockAuthBloc;
  late Router router;

  setUp(() {
    // Register dependencies
    router = Router();
    //getIt.registerSingleton<Router>(router);

    mockAuthBloc = MockAuthBloc();
    getIt.registerSingleton<AuthBloc>(mockAuthBloc);
    whenListen(
      mockAuthBloc,
      Stream.value(const AuthState.unauthenticated()),
      initialState: const AuthState.unauthenticated(),
    );
  });

  tearDown(() async {
    await getIt.reset();
  });

  /*  // TODO maybe test for auth wrapper instead of auto router becaus auth wrapper should be initial page ?
  testWidgets(
    'Contains AutoRouter.',
    (tester) async {
      // Act
      const underTest = App();
      await tester.pumpWidget(underTest);
      router.navigate(
        const UnauthenticatedFlowRoute(children: [AuthWrapperRoute()]),
      );
      await tester.pump();

      // Assert
      expect(find.byType(AutoRouter), findsOneWidget);
    },
  );
 */
}
