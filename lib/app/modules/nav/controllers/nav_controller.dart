import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/views/home_view.dart';
import 'package:get/get.dart';

class NavController extends GetxController {
  RxInt selectIndex = 0.obs;
  RxList bodyList = [
    HomePage(),
  ].obs;
  final appDrawer = Drawer(
    backgroundColor: Colors.grey,child: Container(
      height: 200,width: 100,
    ),
  );
}

