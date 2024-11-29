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
        height: 180,
        width: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'CircularStd',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
