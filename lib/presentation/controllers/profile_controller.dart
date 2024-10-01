import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  var coins = 20.obs;
  var followers = 0.obs;
  var profileImagePath = ''.obs;

  final ImagePicker _picker = ImagePicker();

  // Increment coins method
  void incrementCoins() {
    coins++;
  }

  // Increment followers method
  void incrementFollowers() {
    followers++;
  }

  // Method to pick an image from the gallery
  Future<void> pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      profileImagePath.value = pickedFile.path;
    }
  }
}
