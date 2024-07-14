import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Notes',
            style: TextStyle(
              fontFamily: 'PFA',
              fontSize: 30,
            ),
          ),
          CustomIcon(),
        ],
      ),
    );
  }
}
