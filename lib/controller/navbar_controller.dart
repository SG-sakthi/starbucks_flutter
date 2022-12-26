import 'package:get/get.dart';

class NavBarController extends GetxController {
  var tabIndex = 0.obs;
  void changeIndex(index) {
    tabIndex.value = index;
  }
}
