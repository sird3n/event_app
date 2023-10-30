import 'package:event_app/screens/myattendance.dart';
import '../theme/theme_colors.dart';
import 'package:flutter/material.dart';
import '../../theme/theme_text_styles.dart';
import '../../widgets/custom_button.dart';
import '../../utils/helper_size_widgets.dart';
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

    body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/image 3.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Pushes content to top and bottom
        children: [
          Column(
            children: [
              addVerticalSpace(40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Welcome, Audrey",
                  softWrap: true,
                  style: kLargeLabelText,
                  textAlign: TextAlign.right,
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Please mark your attendance today",
                  softWrap: true,
                  style: kSemiMediumLabelText,
                  textAlign: TextAlign.right,
                ),
              ),
 
              addVerticalSpace(80),

              CustomButton.defaultButton(
                text: 'SUBMIT',
                onPressed: () {
                  // Handle button click
                },
                backgroundColor: kAccent,
                textColor: Colors.white,
                borderColor: Colors.white,
                cornerRadius: 20,
                width: 300,
                height: 45,
              ),

              addVerticalSpace(100),

            ],
          ),

        ],
      ),
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


