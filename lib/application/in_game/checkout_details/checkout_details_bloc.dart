import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'checkout_details_event.dart';
part 'checkout_details_state.dart';
part 'checkout_details_bloc.freezed.dart';

@injectable
class CheckoutDetailsBloc
    extends Bloc<CheckoutDetailsEvent, CheckoutDetailsState> {
  CheckoutDetailsBloc()
      : super(
          const CheckoutDetailsState(
            minDartsThrown: 1,
            maxDartsThrown: 3,
            minDartsOnDouble: 0,
            maxDartsOnDouble: 3,
          ),
        );

  @override
  Stream<CheckoutDetailsState> mapEventToState(
    CheckoutDetailsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
