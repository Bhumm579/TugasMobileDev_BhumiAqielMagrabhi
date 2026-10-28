import 'package:flutter/material.dart';
import 'package:flutter_app_01/controllers/drawer_menu_controller.dart';
import 'package:get/get.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DrawerMenuController());
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Drawer Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'user@email.com',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            selected: controller.selectedIndex.value == 0,
            onTap: () => controller.changePage(0),
          ),
          ListTile(
            leading: const Icon(Icons.history_outlined),
            title: const Text('History'),
            selected: controller.selectedIndex.value == 1,
            onTap: () => controller.changePage(1),
          ),
          ListTile(
            leading: const Icon(Icons.person_outlined),
            title: const Text('Person'),
            selected: controller.selectedIndex.value == 2,
            onTap: () => controller.changePage(2),
          ),
        ],
      ),
    );
  }
}
