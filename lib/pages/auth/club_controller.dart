import 'package:get/get.dart';

class ClubController extends GetxController {

  final selectedIndex = 0.obs;

  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}