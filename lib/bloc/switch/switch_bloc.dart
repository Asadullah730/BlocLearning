import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'switch_event.dart';
part 'switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchInitial()) {
    on<EnableNotification>(_notificationEnabled);
    on<DisableNotification>(_notificationDisabled);
  }

  void _notificationEnabled(SwitchEvent event, Emitter<SwitchState> emit) {
    emit(SwitchInitial(isEnabled: true));
  }

  void _notificationDisabled(SwitchEvent event, Emitter<SwitchState> emit) {
    emit(SwitchInitial(isEnabled: false));
  }
}
