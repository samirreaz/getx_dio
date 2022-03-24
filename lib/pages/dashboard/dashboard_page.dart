import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dio/pages/account/account_page.dart';
import 'package:getx_dio/pages/alerts/alerts_page.dart';
import 'package:getx_dio/pages/dashboard/dashboard_controller.dart';
import 'package:getx_dio/pages/home/home_page.dart';
import 'package:getx_dio/pages/news/news_page.dart';
import 'package:getx_dio/pages/posts/post_page.dart';

//! getview not working here.. because getvinding is called
//class DashboardPage extends GetView<DashboardController> {

//! so, thats why we are using StatelessWidget
class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomePage(),
              //NewsPage(),
              PostPage(),
              AlertsPage(),
              AccountPage(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomNavigationBarItem(
              icon: CupertinoIcons.home,
              title: 'Home',
            ),
            _bottomNavigationBarItem(
              icon: CupertinoIcons.book,
              title: 'News',
            ),
            _bottomNavigationBarItem(
              icon: CupertinoIcons.bell,
              title: 'Alerts',
            ),
            _bottomNavigationBarItem(
              icon: CupertinoIcons.person,
              title: 'Account',
            ),
          ],
        ),
      );
    });
  }

  _bottomNavigationBarItem({IconData icon = Icons.home, String title = ''}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: title,
    );
  }
}
