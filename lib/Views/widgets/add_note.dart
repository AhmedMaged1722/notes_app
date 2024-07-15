import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/custom_text_filed.dart';
import 'package:notes_app/constans/color.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
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
                fixedSize: const Size(350, 50),
                foregroundColor: kColor1,
                backgroundColor: kColor4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
