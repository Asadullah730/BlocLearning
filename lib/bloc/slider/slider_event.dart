part of 'slider_bloc.dart';

sealed class SliderEvent extends Equatable {
  const SliderEvent();

  @override
  List<Object> get props => [];
}

class IncreaseSliderValue extends SliderEvent {}

class DecreaseSliderValue extends SliderEvent {}
