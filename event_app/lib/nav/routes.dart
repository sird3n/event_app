import 'package:event_app/screens/myattendance.dart';
import '../screens/signin.dart';
import '../screens/welcome.dart';
import '../screens/signup.dart';
import '../screens/home.dart';
import 'package:flutter/cupertino.dart';


// This class defines a collection of routes for the Flutter application.
class Routes {

  // A map that associates route names with their corresponding widget builders.
  static final Map<String, WidgetBuilder> routes = {

    // The 'WelcomeScreen.routeName' route displays the WelcomeScreen widget when navigated to.
    WelcomeScreen.routeName: (context) => const WelcomeScreen(),

    // The 'SignIn.routeName' route displays the SignIn widget when navigated to.
    SignIn.routeName: (context) => const SignIn(),

    SignUp.routeName: (context) => const SignUp(),

    Home.routeName: (context) => const Home(initialRoute: '',),

    MyAttendance.routeName: (context) => const MyAttendance(initialRoute: '',)



  };
}