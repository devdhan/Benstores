import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final VoidCallback onTap;
  final String imagePath;
  final String label;

  const CategoryItem({
    super.key,
    required this.onTap,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 120,
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 80,
              height: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              label,
              style: const TextStyle(
                fontFamily: 'CircularStd',
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
