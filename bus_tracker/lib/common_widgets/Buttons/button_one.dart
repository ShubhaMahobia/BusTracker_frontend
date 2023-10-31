import 'package:bus_tracker/constants/custom_fonts.dart';
import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const Button1({super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 200,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          enableFeedback: true,
          backgroundColor: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.all(8),
        ),
        child: Text(
          buttonText,
          style: CustomTextStyle.buttonText1(context),
        ),
      ),
    );
  }
}
