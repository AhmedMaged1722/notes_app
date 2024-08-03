import 'package:flutter/material.dart';
import 'package:notes_app/constans/const.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.onTap});
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Search',
      child: GestureDetector(
        onTap: onTap,
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
