part of 'slider_bloc.dart';

sealed class SliderState extends Equatable {
  final double sliderValue;
  const SliderState({this.sliderValue = 0.4});

  SliderState copyWith({double? sliderValue}) {
    return SliderInitial(sliderValue: sliderValue ?? this.sliderValue);
  }

  @override
  List<Object> get props => [sliderValue];
}

final class SliderInitial extends SliderState {
  const SliderInitial({double sliderValue = 0.4})
    : super(sliderValue: sliderValue);
}
