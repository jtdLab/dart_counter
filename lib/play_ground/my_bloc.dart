import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_event.dart';
part 'my_state.dart';
part 'my_bloc.freezed.dart';

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(const MyState.buildable());
}
