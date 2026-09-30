import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String address;
  late String gender;
  late String phoneNumber;
  late String email;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments; // menangkap data dari tampilan sebelumnya
    nama = arguments['name'];
    address = arguments['address'];
    gender = arguments['gender'];
    phoneNumber = arguments['phone_number'];
    email = arguments['email'];
  }
}
