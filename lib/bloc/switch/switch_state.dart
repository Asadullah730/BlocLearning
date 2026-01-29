part of 'switch_bloc.dart';

sealed class SwitchState extends Equatable {
  final bool isEnabled;
  const SwitchState({this.isEnabled = false});

  SwitchState copyWith({bool? isEnabled}) {
    return SwitchInitial(isEnabled: isEnabled ?? this.isEnabled);
  }

  @override
  List<Object> get props => [isEnabled];
}

final class SwitchInitial extends SwitchState {
  const SwitchInitial({bool isEnabled = false}) : super(isEnabled: isEnabled);
}
