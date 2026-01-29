part of 'switch_bloc.dart';

sealed class SwitchEvent extends Equatable {
  const SwitchEvent();

  @override
  List<Object> get props => [];
}

class EnableNotification extends SwitchEvent {}

class DisableNotification extends SwitchEvent {}
