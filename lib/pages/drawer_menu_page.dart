import 'package:flutter/material.dart';
import 'package:flutter_app_01/components/left_drawer.dart';
import 'package:flutter_app_01/controllers/drawer_menu_controller.dart';
import 'package:get/get.dart';

class DrawerMenuPage extends StatelessWidget {
  const DrawerMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DrawerMenuController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Menu'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.listPages,
        ),
      ),
    );
  }
}
