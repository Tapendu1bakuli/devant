import 'package:devant/app/modules/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeOneScreen extends StatelessWidget {
  const HomeOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      body:Obx(() {
        if (homeController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: homeController.users.length,
          itemBuilder: (context, index) {
            final user = homeController.users[index];
            return ListTile(
              title: Text(user.name??""),
              subtitle: Text(user.email??""),
            );
          },
        );
      }),
    );
  }
}
