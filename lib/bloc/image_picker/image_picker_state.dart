part of 'image_picker_bloc.dart';

sealed class ImagePickerState extends Equatable {
  final XFile? file;
  const ImagePickerState(this.file);

  ImagePickerState copyWith({XFile? file}) {
    return ImagePickerInitial(file ?? this.file);
  }

  @override
  List<Object?> get props => [file];
}

final class ImagePickerInitial extends ImagePickerState {
  const ImagePickerInitial(super.file);

  @override
  List<Object?> get props => [file];
}
