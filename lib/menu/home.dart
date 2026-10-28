import 'package:belajarflutter/controller/list_product_controller.dart';
import 'package:belajarflutter/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 238, 238),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 80),
        height: 240,
        child: Obx(
          () => ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: controller.listProduk.length,
            itemBuilder: (context, index) {
              final produk = controller.listProduk[index];

              return SizedBox(
                width: 180,
                child: Card(
                  color: const Color.fromARGB(255, 255, 251, 251),
                  margin: const EdgeInsets.only(right: 12, bottom: 8),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(27),
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
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              produk.image,
                              width: double.infinity,
                              height: 110,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return const SizedBox(
                                  height: 110,
                                  child: Center(
                                    child: Icon(Icons.shopping_bag,
                                        size: 40, color: Colors.grey),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            produk.namaProduk,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            produk.harga,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.pink,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}