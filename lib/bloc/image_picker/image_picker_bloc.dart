import 'package:bloc/bloc.dart';
import 'package:bloc_learning/utils/image_picker_util.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

part 'image_picker_event.dart';
part 'image_picker_state.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePickerUtil _imagePickerUtil = ImagePickerUtil();

  ImagePickerBloc() : super(ImagePickerInitial(null)) {
    on<PickImageFromGallery>(_pickImageFromGallery);
    on<PickImageFromCamera>(_pickImageFromCamera);
  }

  void _pickImageFromGallery(
    PickImageFromGallery event,
    Emitter<ImagePickerState> emit,
  ) async {
    try {
      emit(state.copyWith(file: await _imagePickerUtil.PickImageFromGallery()));
    } catch (e) {
      print("ERROR WHILE PICKING IMAGE FROM GALLERY: $e");
    }
  }

  void _pickImageFromCamera(
    PickImageFromCamera event,
    Emitter<ImagePickerState> emit,
  ) async {
    try {
      emit(state.copyWith(file: await _imagePickerUtil.PickImageFromCamera()));
    } catch (e) {
      print("ERROR WHILE PICKING IMAGE FROM CAMERA: $e");
    }
  }
}
