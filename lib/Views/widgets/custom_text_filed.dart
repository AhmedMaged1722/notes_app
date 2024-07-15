import 'package:flutter/material.dart';
import 'package:notes_app/constans/color.dart';

// ignore: must_be_immutable
class CustomTextFiled extends StatelessWidget {
  CustomTextFiled({super.key, this.hintText, this.maxLines});
  String? hintText;
  int? maxLines;

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: kColor4,
      ),
    );
    return TextField(
      maxLines: maxLines,
      cursorColor: kBlack,
      style: const TextStyle(
        color: kColor4,
      ),
      keyboardType: TextInputType.text,
      keyboardAppearance: Brightness.dark,
      decoration: InputDecoration(
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kColor4,
        ),
      ),
    );
  }
}
