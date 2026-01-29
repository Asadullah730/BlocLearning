part of 'switch_bloc.dart';

sealed class SwitchState extends Equatable {
  final bool isEnabled;
  const SwitchState({this.isEnabled = false});

  @override
  List<Object> get props => [isEnabled];
}

final class SwitchInitial extends SwitchState {
  const SwitchInitial({super.isEnabled = false});

  SwitchState copyWith({bool? isEnabled}) {
    return SwitchInitial(
      isEnabled: isEnabled ?? this.isEnabled,
    );
  }
}
