import 'package:image_picker/image_picker.dart';

class ImagePickerUtil {
  final ImagePicker _picker = ImagePicker();

  Future<XFile> PickImageFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      return image;
    } else {
      throw Exception('No image selected');
    }
  }

  Future<XFile> PickImageFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      return image;
    } else {
      throw Exception('No image captured');
    }
  }
}
