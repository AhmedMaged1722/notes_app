import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Search',
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withOpacity(0.2),
          ),
          child: const Icon(
            Icons.search,
            size: 28,
          ),
        ),
      ),
    );
  }
}
