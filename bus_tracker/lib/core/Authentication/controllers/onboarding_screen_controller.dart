import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnboardingScreenController extends GetxController {
  RxInt currentPage = 0.obs;
  final liqcontroller = LiquidController();

  onPageChangeMethod(int activeIndex) {
    currentPage.value = activeIndex;
  }
}
