import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const MyButton({
    required this.onPressed,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              12.0,
            ),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 13.0,
          ),
        ),
      ),
    );
  }
}
