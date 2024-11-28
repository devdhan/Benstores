import 'package:benstore/components/my_buttton.dart';
import 'package:benstore/pages/homepages/category.dart';
import 'package:flutter/material.dart';

class Noorder extends StatelessWidget {
  const Noorder({super.key});

  void shopcategory(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Category()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const Center(
              child: Text(
                'Orders',
                style: TextStyle(
                  fontFamily: 'CircularStd',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 220.0,
            ),
            Center(
              child: Image.asset(
                'assets/shopping-cart.png',
                width: 80,
                height: 80,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Center(
              child: Text(
                'No Orders Yet',
                style: TextStyle(
                  fontFamily: 'CircularStd',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: MyButton(
                  onTap: () => shopcategory(context),
                  buttonText: 'Explore Categories',
                  buttonColor: const Color(0xFFE75336),
                  buttonTextColor: const Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontFamily: 'CircularStd',
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
