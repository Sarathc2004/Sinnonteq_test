// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:sinnonteq_test/view/foodscreen.dart';
import 'package:sinnonteq_test/view/homescreen.dart';

class Bottomnavcontroller extends GetxController {
  var selectedindex = 0.obs;

  final widgetlist = [
    Homescreen(),
    Foodscreen(),
    Homescreen(),
    Homescreen(),
    Homescreen()
  ];

  void Onnavtap(int index) {
    selectedindex.value = index;
  }
}
