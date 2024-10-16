import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinnonteq_test/controller/bottomnavcontroller.dart';
import 'package:sinnonteq_test/utils/colorconstant/colorconstant.dart';

class BottomNavScreen extends StatelessWidget {
  final Bottomnavcontroller navController = Get.put(Bottomnavcontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Obx(() {
          return BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.restaurant),
                label: 'Food',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_grocery_store_outlined),
                label: 'Mart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.monitor_heart_outlined),
                label: 'Health',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.catching_pokemon_rounded),
                label: 'Cater',
              ),
            ],
            currentIndex: navController.selectedindex.value,
            selectedItemColor: colorconstant.primaryblue,
            unselectedItemColor: colorconstant.primarygray,
            onTap: (index) {
              navController.Onnavtap(index);
            },
          );
        }),
        body: Obx(() {
          return navController.widgetlist[navController.selectedindex.value];
        }),
      ),
    );
  }
}
