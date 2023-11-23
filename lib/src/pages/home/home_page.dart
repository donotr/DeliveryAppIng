import 'package:deliveryapp/src/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget {

  
  HomeController con = Get.put(HomeController());

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('HOME PAGE'),),
    );
  }
}