part of 'switch_bloc.dart';

sealed class SwitchState extends Equatable {
  final bool isEnabled;
  final double sliderValue;
  const SwitchState({this.isEnabled = false, this.sliderValue = 0.4});

  SwitchState copyWith({bool? isEnabled, double? sliderValue}) {
    return SwitchInitial(
      isEnabled: isEnabled ?? this.isEnabled,
      sliderValue: sliderValue ?? this.sliderValue,
    );
  }

  @override
  List<Object> get props => [isEnabled, sliderValue];
}

final class SwitchInitial extends SwitchState {
  const SwitchInitial({bool isEnabled = false, double sliderValue = 0.4})
    : super(isEnabled: isEnabled, sliderValue: sliderValue);
}
