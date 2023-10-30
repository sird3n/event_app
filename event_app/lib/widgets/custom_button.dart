import '../theme/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;  // Add borderColor attribute
  final double cornerRadius;
  final EdgeInsets padding;
  final double width;
  final double height;

  const CustomButton.defaultButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = kAccent,
    this.textColor = Colors.white,
    this.borderColor = Colors.white,  // Initialize borderColor
    this.cornerRadius = 30.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 20.0), required this.width, required this.height,
  }) : super(key: key);


  const CustomButton.solidOutlineButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = kAccent,
    this.textColor = Colors.white,
    this.borderColor = Colors.white,  // Define the border color
    this.cornerRadius = 20.0, // Adjust the corner radius as needed
    this.padding = const EdgeInsets.symmetric(horizontal: 20.0), required this.width, required this.height,
  }) : super(key: key);

  const CustomButton.outlinedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = kAccent,  // Set backgroundColor to transparent
    this.textColor = Colors.black,
    this.borderColor = Colors.black,  // Initialize borderColor
    this.cornerRadius = 20.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 20.0), required this.width, required this.height,
  }) : super(key: key);

  const CustomButton.whiteButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.black,
    this.cornerRadius = 20.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 20.0), required this.width, required this.height,
  }) : backgroundColor = Colors.white,
        borderColor = Colors.black,
        super(key: key);

  const CustomButton.textButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.black,
    this.padding = const EdgeInsets.symmetric(horizontal: 0.0),
    this.cornerRadius = 0.0,
    this.backgroundColor = Colors.transparent,
    this.borderColor = Colors.transparent, required this.width, required this.height, required TextAlign textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(backgroundColor == Colors.transparent) {
      // If backgroundColor is transparent, use OutlinedButton
      return Padding(
        padding: padding,
        child: SizedBox(
          width: 200.0,
          height: 45.0,
          child: OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cornerRadius),
              ),
              side: BorderSide(color: borderColor), // Add borderColor
            ),
            child: Text(
              text,
              style: TextStyle(color: textColor),  // Add textColor
            ),
          ),
        ),
      );
    } else {
      // If backgroundColor is not transparent, use ElevatedButton
      return Padding(
        padding: padding,
        child: SizedBox(
          width: 200.0,
          height: 40.0,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cornerRadius),
              ),

            ),
            child: Text(
              text,
              style: TextStyle(color: textColor),  // Add textColor
            ),
          ),
        ),
      );
    }
  }
}
