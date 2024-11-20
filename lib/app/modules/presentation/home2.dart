import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/homeController.dart';

class Home2Screen extends StatelessWidget {
  const Home2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
    body:  Obx(() {
        if (homeController.isLoading.value) {
          return Center(child: const CircularProgressIndicator());
        }
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: homeController.images.length,
          itemBuilder: (context, index) {
            final photo = homeController.images[index];
            return Card(
              child: Column(
                children: [
                  Image.network(homeController.images[index].url??"", height: 100, width: 100, fit: BoxFit.cover),
                  Text(homeController.images[index].title??"", maxLines: 2, overflow: TextOverflow.ellipsis),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}
