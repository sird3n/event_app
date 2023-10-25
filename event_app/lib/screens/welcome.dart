import '../screens/signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import '../../theme/theme_colors.dart';
import '../../theme/theme_text_styles.dart';
import '../../utils/helper_size_widgets.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static String routeName = 'welcomeScreen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                    "Attendance",
                    softWrap: true,
                    style: kLargeLabelText,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "App",
                    softWrap: true,
                    style: kMediumLabelText,
                    textAlign: TextAlign.center,
                  ),
                ),
                addVerticalSpace(20),
              ],
            ),


            Lottie.asset(
              'assets/animation/animation.json', // Replace with the path to your Lottie animation file
              width: 400, // Set the width
              height: 400, // Set the height
            ),



            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 150),
                child: CustomButton.defaultButton(
                  text: 'GET STARTED',
                  onPressed: () {
                    // Handle button click
                    Navigator.pushNamed(context, SignIn.routeName);
                  },
                  backgroundColor: kAccent,
                  textColor: Colors.white,
                  borderColor: Colors.white,
                  cornerRadius: 20,
                  width: 200.0,
                  height: 40.0,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
