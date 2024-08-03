import 'package:flutter/material.dart';
import 'package:notes_app/constans/const.dart';

class Button extends StatefulWidget {
  const Button({super.key, this.isLoading = false, this.onPressed});

  final bool isLoading;
  final void Function()? onPressed;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(350, 50),
        foregroundColor: kColor1,
        backgroundColor: kColor4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: widget.isLoading
          ? const CircularProgressIndicator(
              backgroundColor: kColor4,
              color: kColor1,
            )
          : const Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
    );
  }
}
