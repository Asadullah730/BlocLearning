import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'slider_event.dart';
part 'slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc() : super(SliderInitial()) {
    on<IncreaseSliderValue>(_increaseSliderValue);
    on<DecreaseSliderValue>(_decreaseSliderValue);
  }

  void _increaseSliderValue(
    IncreaseSliderValue event,
    Emitter<SliderState> emit,
  ) {
    final newValue = (state.sliderValue + 0.1).clamp(0.0, 1.0);
    emit(state.copyWith(sliderValue: newValue));
  }

  void _decreaseSliderValue(
    DecreaseSliderValue event,
    Emitter<SliderState> emit,
  ) {
    final newValue = (state.sliderValue - 0.1).clamp(0.0, 1.0);
    emit(state.copyWith(sliderValue: newValue));
  }
}
