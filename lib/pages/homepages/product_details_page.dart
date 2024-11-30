import 'package:benstore/components/my_buttton.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath;
  final String description;

  const ProductDetailsPage({
    super.key,
    required this.title,
    required this.price,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 70), // Space for the button
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            'assets/left.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border_rounded),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 400,
                      child: Image.asset(
                        imagePath,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      "₦$price",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xFFE75336),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: MyButton(
              buttonImage: const Icon(
                Icons.shopping_bag_outlined,
                color: Color(0xFFFFFFFF),
              ),
              onTap: () {},
              buttonText: 'Add to Bags',
              buttonColor: const Color(0xFFE75336),
              buttonTextColor: const Color(0xFFFFFFFF),
              fontSize: 16,
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
