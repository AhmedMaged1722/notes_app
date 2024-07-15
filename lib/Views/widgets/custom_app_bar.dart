import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/custom_icon.dart';
import 'package:notes_app/constans/color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icons});
  final String title;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: kColor4,
            fontSize: 30,
          ),
        ),
        CustomIcon(
          icon: icons,
        ),
      ],
    );
  }
}
