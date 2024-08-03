import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/custom_icon.dart';
import 'package:notes_app/constans/const.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icons,
    this.onTap,
  });
  final String title;
  final IconData icons;
  final Function()? onTap;
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
          onTap: onTap,
        ),
      ],
    );
  }
}
