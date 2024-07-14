import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/custom_text_filed.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Expanded(
        child: ListView(
          children: [
            const SizedBox(
              height: 35,
            ),
            CustomTextFiled(hintText: 'Title'),
            const SizedBox(
              height: 50,
            ),
            CustomTextFiled(
              hintText: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF8D493A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'OK',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
