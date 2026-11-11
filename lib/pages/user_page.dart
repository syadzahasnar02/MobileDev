
import 'package:belajarflutter/controller/user_controller.dart';
import 'package:belajarflutter/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListProductPage extends StatelessWidget {
  ListProductPage({super.key});

  final controller = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 238, 238),

      appBar: AppBar(
        title: const Text(
          "My Users",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 128, 59, 59),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 241, 215, 222),
      ),

      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.pink,
            ),
          );
        }

        final users = controller.listUser.value?.users ?? [];

        if (users.isEmpty) {
          return const Center(
            child: Text("Data user tidak ditemukan"),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: users.length,

          itemBuilder: (context, index) {
            final user = users[index];

            return Dismissible(
              key: ValueKey(user.id),
              direction: DismissDirection.startToEnd,

              background: Container(
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(27),
                ),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),

              child: Card(
                color: const Color.fromARGB(255, 255, 251, 251),
                margin: const EdgeInsets.only(bottom: 8),
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
                        'id': user.id,
                        'firstName': user.firstName,
                        'lastName': user.lastName,
                        'maidenName': user.maidenName,
                        'age': user.age,
                        'gender': user.gender.name,
                        'email': user.email,
                        'phone': user.phone,
                        'username': user.username,
                        'birthDate': user.birthDate,
                        'image': user.image,
                        'bloodGroup': user.bloodGroup,
                        'height': user.height,
                        'weight': user.weight,
                        'eyeColor': user.eyeColor,
                        'university': user.university,
                        'address': user.address,
                        'company': user.company,
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
                            user.image,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,

                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: 100,
                                height: 100,
                                color: const Color(0xFFF1D7DE),
                                child: const Icon(
                                  Icons.person,
                                  size: 40,
                                  color: Color(0xFF803B3B),
                                ),
                              );
                            },
                          ),
                        ),

                        const SizedBox(width: 12),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${user.firstName} ${user.lastName}",
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF503535),
                                ),
                              ),

                              const SizedBox(height: 6),

                              Text(
                                "@${user.username}",
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),

                              const SizedBox(height: 6),

                              Text(
                                user.email,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF8B7777),
                                ),
                              ),

                              const SizedBox(height: 6),

                              Text(
                                "${user.age} years • ${user.gender.name}",
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.pink,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
