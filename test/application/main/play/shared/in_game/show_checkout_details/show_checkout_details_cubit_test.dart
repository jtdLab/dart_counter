import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/play/shared/in_game/show_checkout_details/show_checkout_details_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('initial state initialized correctly', () {
    // Arrange & Act
    final underTest = ShowCheckoutDetailsCubit();

    // Assert
    expect(
      underTest.state,
      false,
    );
  });

  group('showCheckoutDetails', () {
    blocTest<ShowCheckoutDetailsCubit, bool>(
      'emits [true, false] when showCheckoutDetails is called.',
      build: () => ShowCheckoutDetailsCubit(),
      act: (cubit) => cubit.showCheckoutDetails(),
      expect: () => <bool>[true, false],
    );
  });
}
