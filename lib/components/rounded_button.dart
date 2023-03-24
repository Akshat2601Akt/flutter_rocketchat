import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final VoidCallback onTap;
  const RoundedButton({required this.buttonText, required this.buttonColor, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onTap,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
            style: const TextStyle(
              fontFamily: 'Cantarell',
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
