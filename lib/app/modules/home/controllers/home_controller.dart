import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  List SmartDevices = [
    ["Smart AC", "assets/icons/air-conditioner.png", false],
    ["Smart Fan", "assets/icons/fan.png", false],
    ["Smart Light", "assets/icons/light-bulb.png", false],
    ["Smart tv", "assets/icons/smart-tv.png", true],
  ].obs;

  void statuschange(bool value, int index) {
    print('ho');
    SmartDevices[index][2] = value;
    update();
  }

  void increment() => count.value++;
}
