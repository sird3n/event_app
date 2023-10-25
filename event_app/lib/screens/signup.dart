import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../screens/home.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../theme/theme_colors.dart';
import '../../theme/theme_text_styles.dart';
import '../../utils/helper_size_widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  static String routeName = 'signUpScreen';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background-image.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Pushes content to top and bottom
          children: [
            Column(
              children: [
                addVerticalSpace(100),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "Sign Up",
                    softWrap: true,
                    style: kLargeLabelText,
                    textAlign: TextAlign.center,
                  ),
                ),

                addVerticalSpace(100),

                //First Name TextField
                CustomTextFields.standardTextField(
                  hintText: 'First Name',
                  onChanged: (value) {
                    // do something with the email entered
                  },
                ),

                addVerticalSpace(20),

                //Last Name TextField
                CustomTextFields.standardTextField(
                  hintText: 'Last Name',
                  onChanged: (value) {
                    // do something with the email entered
                  },
                ),

                addVerticalSpace(20),                

                //Email Address TextField
                CustomTextFields.emailTextField(
                  hintText: 'Email Address',
                  onChanged: (value) {
                    // do something with the email entered
                  },
                ),

                addVerticalSpace(20),

                //Phone Number TextField
                CustomTextFields.phoneTextField(
                  hintText: 'Phone Number',
                  onChanged: (value) {
                    // do something with the email entered
                  },
                ),

                addVerticalSpace(20),                

                //Password TextField
                CustomTextFields.passwordTextField(
                  hintText: 'Password',
                  onChanged: (value) {
                    // do something with the email entered
                  },
                ),

                addVerticalSpace(20),

                //Confirm Password TextField
                CustomTextFields.passwordTextField(
                  hintText: 'Confirm Password',
                  onChanged: (value) {
                    // do something with the email entered
                  },
                ),

                addVerticalSpace(20),                

                CustomButton.defaultButton(
                  text: 'SIGN Up',
                  onPressed: () {
                    // Handle button click
                    Navigator.pushNamed(context, Home.routeName);
                  },
                  backgroundColor: kAccent,
                  textColor: Colors.white,
                  borderColor: Colors.white,
                  cornerRadius: 20,
                  width: 200,
                  height: 45,
                ),

                addVerticalSpace(40),

              ],
            ),

          ],
        ),
      ),
    );
  }
}

