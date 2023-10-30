import 'package:flutter/material.dart';
import '../screens/home.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../theme/theme_colors.dart';
import '../../theme/theme_text_styles.dart';
import '../../utils/helper_size_widgets.dart';


final _formKey = GlobalKey<FormState>();

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  static String routeName = 'signUpScreen';


  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
//final _nameController = TextEditingController();
//final _emailController = TextEditingController();

String? validateEmail(String? email) {
  RegExp emailRegx = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$');
  final isEmailValid = emailRegx.hasMatch(email ?? '');
  if(!isEmailValid) {
    return 'Please enter a valid email';
  }
  return null;

}


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
            Form(
              key: _formKey,
              child: Column(
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
                      //validator: (name) => name!.length < 3 ? 'Hello Wtf': null;
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
                      //validator: validateEmail;
                    },
                    //autovalidateMode: AutovalidateMode.onUserInteraction,
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
                      _formKey.currentState!.validate();
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
            ),
          ],
        ),
      ),
    );
  }
}

