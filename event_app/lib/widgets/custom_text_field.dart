import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final int? maxLength;
  final bool obscureText;
  final double width;
  final double height;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.onChanged,
    this.keyboardType,
    this.maxLength,
    this.obscureText = false,
    this.width = 260.0,
    this.height = 50.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: width, // Set custom width
        height: height, // Set custom height
        child: TextField(
            style: const TextStyle(color: Colors.black),
            // Text color
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
              filled: true,
              // Enable filled background
              fillColor: Colors.white,
              // Background color
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50), // Border radius
                borderSide:
                    const BorderSide(color: Colors.white), // Border color
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                    color: Colors.black), // Focused border color
              ),
            ),
            onChanged: onChanged,
            keyboardType: keyboardType,
            maxLength: maxLength,
            obscureText: obscureText,
            textAlign: TextAlign.center),
      ),
    );
  }
}

class CustomTextFields {
  //Username
  static Widget standardTextField({
    required String hintText,
    required Function(String) onChanged,
  }) {
    return CustomTextField(
      hintText: hintText,
      onChanged: onChanged,
      keyboardType: TextInputType.text,
    );
  }

  //Phone number
  static Widget phoneTextField({
    required String hintText,
    required Function(String) onChanged,
  }) {
    return CustomTextField(
      hintText: hintText,
      onChanged: onChanged,
      keyboardType: TextInputType.phone,
    );
  }

  //Password
  static Widget passwordTextField({
    required String hintText,
    required Function(String) onChanged,
  }) {
    return CustomTextField(
      hintText: hintText,
      onChanged: onChanged,
      obscureText: true,
    );
  }

  //Code
  static Widget codeTextField({
    required String hintText,
    required Function(String) onChanged,
  }) {
    return CustomTextField(
      hintText: hintText,
      onChanged: onChanged,
      obscureText: true,
    );
  }

  //Email
  static Widget emailTextField({
    required String hintText,
    required Function(String) onChanged,
  }) {
    return CustomTextField(
      hintText: hintText,
      onChanged: onChanged,
      keyboardType: TextInputType.emailAddress,
    );
  }
}




