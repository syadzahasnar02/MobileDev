import 'package:belajarflutter/controller/list_product_controller.dart';
import 'package:belajarflutter/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListProductPage extends StatelessWidget {
  ListProductPage({super.key});

  final controller = Get.put(ListProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 238, 238),
      appBar: AppBar(
        title: const Text(
          "My Products",
          style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 128, 59, 59)),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 241, 215, 222),
      ),
      body: Obx(
          () => ListView.builder(
            itemCount: controller.listProduk.length,
            itemBuilder: (context, index) {
              final produk = controller.listProduk[index];
              return Dismissible(
                key: ValueKey(produk.namaProduk),
                direction: DismissDirection.startToEnd,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),

            child: Card(
              color: const Color.fromARGB(255, 255, 251, 251),
              margin: const EdgeInsets.only(bottom: 8),
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27),
              ),

            child: InkWell(
              onTap: () {
                Get.toNamed(
                Routes.listDetailProduk,
                arguments: {
                    'namaProduk': produk.namaProduk,
                    'harga': produk.harga,
                    'deskripsi': produk.deskripsi,
                    'image': produk.image,
                    'rating': produk.rating,
                    'review': produk.review,
                    'namaToko': produk.namaToko,
                  },
              );
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        produk.image,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.shopping_bag, size: 1, color: Colors.grey,);
                        },
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            produk.namaProduk,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            produk.harga,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.pink,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.chevron_right, color: Colors.grey),
                  ],
                ),
              ),
            ),
            ),
          );
        },
      ),
    ),
    );
  }
}
