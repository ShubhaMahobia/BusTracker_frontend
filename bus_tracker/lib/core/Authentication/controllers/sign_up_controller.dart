import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final password = TextEditingController();
  final phoneController = TextEditingController();
}
