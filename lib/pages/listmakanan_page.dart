import 'package:flutter/material.dart';
import 'package:flutter_app_01/pages/detailmakanan_page.dart';
import 'package:get/get.dart';
import 'package:flutter_app_01/controllers/listmakanan_controller.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});
  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Makanan')),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return InkWell(
              onTap: () {
                Get.to(() => DetailMakananPage(makanan: makanan));
              },
              child: ListTile(
                title: Text(makanan.namaMakanan),
                subtitle: Text(makanan.hargaMakanan),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          },
        ),
      ),
    );
  }
}
