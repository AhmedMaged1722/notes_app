import 'package:flutter/material.dart';
import 'package:notes_app/constans/color.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final IconData icon;

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
          child: Icon(
            color: kBlack,
            icon,
            size: 28,
          ),
        ),
      ),
    );
  }
}
