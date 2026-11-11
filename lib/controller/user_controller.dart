import 'package:belajarflutter/models/user_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController {
  var listUser = Rxn<UserModel>();
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getDataUser();
  }

  void getDataUser() async {
    try {
      isLoading.value = true;
      final url = Uri.parse("https://dummyjson.com/users");
      final response = await http.get(url);

      isLoading.value = false;

      if (response.statusCode == 200) {
        // Boom! Kodingan ala temenmu jalan mulus di sini
        listUser.value = userModelFromJson(response.body);
      } else {
        Get.snackbar("Gagal", "Cek internet connection");
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("gagal", e.toString());
      print("error nya " + e.toString());
    }
  }
}
