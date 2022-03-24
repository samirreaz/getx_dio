import 'package:get/get.dart';
import 'package:getx_dio/pages/account/account_controller.dart';
import 'package:getx_dio/pages/dashboard/dashboard_controller.dart';
import 'package:getx_dio/pages/posts/post_controller.dart';

import '../home/home_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    //! it's because home controller is not used in dashboard page
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AccountController>(() => AccountController());
    Get.lazyPut<PostController>(() => PostController());
  }
}
