import 'package:get/get.dart';

class DashboardController extends GetxController {
  int tabIndex = 0;
  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
