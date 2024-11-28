import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
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
              GestureDetector(
                onTap: () {
                  print('Hoodies pressed');
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0x39B3B3B3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 15.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/hoodie.png',
                          width: 45,
                          height: 45,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        const Text(
                          'Hoodies',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  print('Accessories pressed');
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0x39B3B3B3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 15.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/accessories.png',
                          width: 45,
                          height: 45,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        const Text(
                          'Accessories',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  print('Shorts pressed');
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0x39B3B3B3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 15.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/shorts.png',
                          width: 45,
                          height: 45,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        const Text(
                          'Shorts',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  print('Shoe pressed');
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0x39B3B3B3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 15.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/shoe.png',
                          width: 45,
                          height: 45,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        const Text(
                          'Shoe',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  print('Bag pressed');
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0x39B3B3B3),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 15.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/bag.png',
                          width: 45,
                          height: 45,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        const Text(
                          'Bag',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
