import '../theme/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../theme/theme_text_styles.dart';
import '../nav/routes.dart';
import '../screens/home.dart';

class MyAttendance extends StatefulWidget {

  final String initialRoute;

  const MyAttendance({Key? key, required this.initialRoute}) : super(key: key);
  static String routeName = 'homeScreen';

  @override
  State<MyAttendance> createState() => _MyAttendanceState();
}

class _MyAttendanceState extends State<MyAttendance> {

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
      title: Text("My Attendance"),
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
              "Event Type: ",
              style: kLargeAppTitle,
              textAlign:TextAlign.left,
            ),
            
          ),
        ),
        Expanded(
          child: _tabs[_selectedIndex], // Display the tab content
        ),
      ],
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (int index) {
        if (index == 0) {
          // Check if the "My Attendance" icon is tapped (index 1)
          Navigator.pushNamed(context, Home.routeName); // Replace with your route
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


