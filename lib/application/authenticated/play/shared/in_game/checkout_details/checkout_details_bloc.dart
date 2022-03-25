/**
 * import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_details_event.dart';
part 'checkout_details_state.dart';
part 'checkout_details_bloc.freezed.dart';

class CheckoutDetailsBloc extends Bloc<CheckoutDetailsEvent, CheckoutDetailsState> {
  CheckoutDetailsBloc() : super(_Initial()) {
    on<CheckoutDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

 */
