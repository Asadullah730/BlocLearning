import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'switch_event.dart';
part 'switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchInitial()) {
    on<EnableSwitch>(_enableSwitch);

    on<DisableSwitch>(_disableSwitch);
  }

  void _enableSwitch(EnableSwitch event, Emitter<SwitchState> emit) {
    emit(state.copyWith(isEnabled: true));
  }

  void _disableSwitch(DisableSwitch event, Emitter<SwitchState> emit) {
    emit(state.copyWith(isEnabled: false));
  }
}
