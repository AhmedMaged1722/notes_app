import 'package:flutter/material.dart';
import 'package:notes_app/constans/color.dart';

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
            color: kColor4.withOpacity(0.8),
          ),
          child: const Icon(
            color: kBlack,
            Icons.search,
            size: 28,
          ),
        ),
      ),
    );
  }
}
