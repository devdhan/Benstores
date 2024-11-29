import 'package:flutter/material.dart';

class ShopcategoryItem extends StatelessWidget {
  final VoidCallback onTap;
  final String imagePath;
  final String label;

  const ShopcategoryItem({
    super.key,
    required this.onTap,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0x39B3B3B3),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                width: 45,
                height: 45,
              ),
              const SizedBox(
                width: 20.0,
              ),
              Text(
                label,
                style: const TextStyle(
                  fontFamily: 'CircularStd',
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
