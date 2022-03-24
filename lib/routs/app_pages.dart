import 'package:get/get.dart';
import 'package:getx_dio/pages/dashboard/dashboard_binding.dart';
import 'package:getx_dio/pages/dashboard/dashboard_page.dart';

import 'app_routes.dart';

class AppPage {
  static var list = [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
