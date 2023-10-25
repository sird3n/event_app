import 'package:event_app/screens/myattendance.dart';

import '../theme/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../theme/theme_text_styles.dart';
import '../../widgets/custom_button.dart';
import '../nav/routes.dart';

class Home extends StatefulWidget {

  final String initialRoute;

  const Home({Key? key, required this.initialRoute}) : super(key: key);
  //const Home({super.key});
  static String routeName = 'homeScreen';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  // Define the tabs and their corresponding icons here
  final List<Widget> _tabs = [
    const Placeholder(),
    const Placeholder()
  ];

  // Define the icons for each tab here
  final List<IconData> _icons = [
    Icons.home,
    Icons.list
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Event App',
    debugShowCheckedModeBanner: false,
    initialRoute: widget.initialRoute,
    routes: Routes.routes,
    home: Scaffold(
    appBar: AppBar(
      title: Text("Home"),
      centerTitle: true,
      titleTextStyle: kLargeLabelText2,
      backgroundColor: kAccent,
    ),

    body: Column( // Wrap everything in a Column
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/image 3.png'),
              fit: BoxFit.fill,
            ),
          ),
          
          child: Center(
            child: Text(
              "Welcome, Audrey",
              style: kLargeAppTitle,
              textAlign:TextAlign.left,
            ),
            
          ),
        ),
        CustomButton.solidOutlineButton(
            text: 'Submit',
            onPressed: () {
              //Handle button click
              //Navigator.pushNamed(context, MyAttend.routeName);
            },
            backgroundColor: kAccent,
            textColor: Colors.white,
            borderColor: Colors.white,
            cornerRadius: 20,
            width: 200,
            height: 45,
          ),
        Expanded(
          child: _tabs[_selectedIndex], // Display the tab content
        ),
      ],
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (int index) {
        if (index == 1) {
          // Check if the "My Attendance" icon is tapped (index 1)
          Navigator.pushNamed(context, MyAttendance.routeName); // Replace with your route
        } else {
          _onTabTapped(index); // Handle other tab taps
        }
        },
      items: [
        BottomNavigationBarItem(
          icon: Icon(_icons[0]),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(_icons[1]),
          label: 'My Attendance',
        ),
      ],
      backgroundColor: kAccent,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Color.fromARGB(255, 255, 255, 255),
    ),
  ),
  );
}

}


