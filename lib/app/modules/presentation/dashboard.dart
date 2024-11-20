import 'package:devant/app/modules/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              homeController.fetchUsers();
              Get.toNamed(Routes.HOME1);
            }, child: const Text("show Users")),
            ElevatedButton(onPressed: (){
              homeController.fetchImages();
              Get.toNamed(Routes.HOME2);
            }, child: const Text("show Images")),
          ],
        ),
      ),
    );
  }
}
