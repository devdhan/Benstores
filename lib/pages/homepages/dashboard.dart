import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Profile picture tapped");
                    },
                    child: Image.asset(
                      'assets/profilepic.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Cart icon tapped");
                    },
                    child: Image.asset(
                      'assets/carticon.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0x39B3B3B3),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Icon(
                        Icons.search_rounded,
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Search',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontFamily: 'CircularStd',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('sell all tapped');
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
