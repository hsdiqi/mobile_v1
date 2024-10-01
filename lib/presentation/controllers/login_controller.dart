import 'package:get/get.dart';
import 'package:mod_1/app/routes/app_pages.dart';

class LoginController extends GetxController {
  var username = ''.obs;
  var password = ''.obs;

  void login() {
    if (username.value == 'admin' && password.value == 'admin') {
      Get.snackbar('Success', 'Login successful');
      Get.toNamed(Routes.PROFILE);
    } else {
      Get.snackbar('Error', 'Invalid username or password');
    }
  }
}
