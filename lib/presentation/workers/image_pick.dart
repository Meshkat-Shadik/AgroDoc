import 'package:image_picker/image_picker.dart';

Future<dynamic> grabImage(ImageSource source) async {
  try {
    final ImagePicker _picker = ImagePicker();
    late dynamic image;
    image = await _picker.pickImage(source: source);
    return image;
  } catch (e) {}
}
