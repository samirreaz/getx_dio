import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dio/pages/account/account_controller.dart';

class AccountPage extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Value ${controller.counter}')),
            ElevatedButton(
                onPressed: () {
                  controller.increaseCounter();
                  //debugPrint('clicked');
                  //debugPrint(controller.counter.toString());
                },
                child: Text('increase')),
          ],
        ),
      ),
    );
  }
}
