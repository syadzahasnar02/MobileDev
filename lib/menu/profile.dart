import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../component/tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 238, 238),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Card(
            color: const Color.fromARGB(255, 255, 251, 251),
            margin: const EdgeInsets.only(bottom: 8),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(27),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 32,
                    backgroundColor: Color.fromARGB(255, 241, 215, 222),
                    child: Text(
                      'AS',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 128, 59, 59),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Halo, Ashley!',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 2),
                        Text('ashleysinclair@gmail.com', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(bottom: 8),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 128, 59, 59),
              borderRadius: BorderRadius.circular(27),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Beauty Member',
                  style: TextStyle(color: Colors.white70, fontSize: 13),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      'VIP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '1.250 poin',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14),
                LinearProgressIndicator(
                  value: 0.625,
                  minHeight: 8,
                  backgroundColor: Colors.white24,
                  color: Color.fromARGB(255, 241, 215, 222),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                SizedBox(height: 8),
                Text(
                  '750 poin lagi menuju Rouge',
                  style: TextStyle(color: Colors.white70, fontSize: 13),
                ),
              ],
            ),
          ),

          Card(
            color: const Color.fromARGB(255, 255, 251, 251),
            margin: const EdgeInsets.only(bottom: 8),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(27),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Pesanan Saya',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Lihat semua',
                          style: TextStyle(color: Colors.pink),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Icon(
                              Icons.inventory_2_outlined,
                              size: 28,
                              color: Color.fromARGB(255, 128, 59, 59),
                            ),
                            SizedBox(height: 6),
                            Text('Dikemas', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Icon(
                              Icons.local_shipping_outlined,
                              size: 28,
                              color: Color.fromARGB(255, 128, 59, 59),
                            ),
                            SizedBox(height: 6),
                            Text('Dikirim', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Icon(
                              Icons.check_circle_outline,
                              size: 28,
                              color: Color.fromARGB(255, 128, 59, 59),
                            ),
                            SizedBox(height: 6),
                            Text('Selesai', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Icon(
                              Icons.star_border,
                              size: 28,
                              color: Color.fromARGB(255, 128, 59, 59),
                            ),
                            SizedBox(height: 6),
                            Text('Ulasan', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          
          Card(
            color: const Color.fromARGB(255, 255, 251, 251),
            margin: const EdgeInsets.only(bottom: 8),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(27),
            ),
            child: Column(
              children: [
                MenuTile(
                  icon:  Icons.favorite_border,
                  title: 'Wishlist',
                  onTap: () {},
                ),                
                MenuTile(
                  icon:  Icons.location_on_outlined,
                  title: 'Shipping Address',
                  onTap: () {},
                ),
                MenuTile(
                  icon:  Icons.credit_card,
                  title: 'Payment Method',
                  onTap: () {},
                ),
                MenuTile(
                  icon:  Icons.local_offer_outlined,
                  title: 'My Voucher',
                  onTap: () {},
                ),
                MenuTile(
                  icon:  Icons.spa_outlined,
                  title: 'Beauty Preference',
                  onTap: () {},
                ),
                MenuTile(
                  icon:  Icons.notifications_none,
                  title: 'Notification',
                  onTap: () {},
                ),
                MenuTile(
                  icon:  Icons.help_outline,
                  title: 'Help Centre',
                  onTap: () {},
                ), 
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: OutlinedButton.icon(
              onPressed: () {
              },
              icon: const Icon(Icons.logout),
              label: const Text('Keluar'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.pink, 
                side: const BorderSide(color: Colors.pink), 
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}