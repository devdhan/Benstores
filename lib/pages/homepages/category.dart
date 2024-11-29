import 'package:benstore/components/shopcategory_item.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/left.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                const Text(
                  'Shop by Categories',
                  style: TextStyle(fontFamily: 'CircularStd', fontSize: 35),
                ),
                const SizedBox(height: 30),
                // Reuse CategoryItem widget for each category
                ShopcategoryItem(
                  onTap: () {
                    print('Bluetooth Speakers pressed');
                  },
                  imagePath: 'assets/speaker.png',
                  label: 'Bluetooth Speakers',
                ),
                const SizedBox(height: 10),
                ShopcategoryItem(
                  onTap: () {
                    print('Charger pressed');
                  },
                  imagePath: 'assets/powerbank.jpeg',
                  label: 'Charger, Cables & Powerbank',
                ),
                const SizedBox(height: 10),
                ShopcategoryItem(
                  onTap: () {
                    print('Computer Accessories pressed');
                  },
                  imagePath: 'assets/accessories.jpg',
                  label: 'Computer Accessories',
                ),
                const SizedBox(height: 10),
                ShopcategoryItem(
                  onTap: () {
                    print('Content Creation Kit pressed');
                  },
                  imagePath: 'assets/creation.png',
                  label: 'Content Creation Kit',
                ),
                const SizedBox(height: 10),
                ShopcategoryItem(
                  onTap: () {
                    print('Electronics Accessories pressed');
                  },
                  imagePath: 'assets/electronic.jpg',
                  label: 'Electronics Accessories',
                ),
                const SizedBox(height: 10),
                ShopcategoryItem(
                  onTap: () {
                    print('Networking Devices pressed');
                  },
                  imagePath: 'assets/network.jpg',
                  label: 'Networking Devices',
                ),
                const SizedBox(height: 10),
                ShopcategoryItem(
                  onTap: () {
                    print('Phone Accessories pressed');
                  },
                  imagePath: 'assets/phoneacc.jpg',
                  label: 'Phone Accessories',
                ),
                const SizedBox(height: 10),
                ShopcategoryItem(
                  onTap: () {
                    print('Storage Devices pressed');
                  },
                  imagePath: 'assets/storage.jpeg',
                  label: 'Storage Devices',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
