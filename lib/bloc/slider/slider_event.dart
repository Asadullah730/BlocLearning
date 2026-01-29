part of 'slider_bloc.dart';

sealed class SliderEvent extends Equatable {
  const SliderEvent();

  @override
  List<Object> get props => [];
}

class UpdateSlider extends SliderEvent {
  final double sliderValue;

  const UpdateSlider({required this.sliderValue});

  @override
  List<Object> get props => [sliderValue];
}
