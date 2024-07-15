import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/custom_icon.dart';
import 'package:notes_app/constans/color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(
            color: kColor4,
            fontSize: 30,
          ),
        ),
        CustomIcon(),
      ],
    );
  }
}
