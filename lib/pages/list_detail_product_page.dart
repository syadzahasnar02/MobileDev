import 'package:belajarflutter/controller/list_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListDetailProductPage extends StatelessWidget {
  ListDetailProductPage({super.key});
  final controller = Get.put(ListDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 252, 252),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 215, 222),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Detail Produk",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 128, 59, 59),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Image.network(
                controller.image,
                height: 280,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.harga,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  controller.namaProduk,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 18),
                    SizedBox(width: 4),
                    Text(controller.rating),
                    Text("  |  "),
                    Text(controller.namaToko),
                  ],
                ),
                Divider(height: 24),
                Text(
                  "Deskripsi",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 6),
                Text(
                  controller.deskripsi,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                Divider(height: 24),
                Card(
                  color: const Color.fromARGB(255, 255, 251, 251),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Review",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          controller.review,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}