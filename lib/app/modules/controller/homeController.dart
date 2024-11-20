import 'dart:convert';

import 'package:get/get.dart';

import '../models/imageModel.dart';
import '../models/userMode.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  var users = <UserModel>[].obs;
  var images = <ImageModel>[].obs;
  RxBool isLoading = false.obs;

  void fetchUsers() async {
    isLoading.value = true;
    try {
      isLoading(true);
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      if (response.statusCode == 200) {
        isLoading.value = false;
        var data = jsonDecode(response.body) as List;
        users.value = data.map((user) => UserModel.fromJson(user)).toList();
      }
    } finally {
      isLoading.value = false;
    }
  }


  void fetchImages() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body) as List;
        images.value = data.map((user) => ImageModel.fromJson(user)).toList();
      }
    } finally {
      isLoading(false);
    }
  }


}