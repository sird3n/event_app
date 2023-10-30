import '../theme/theme_colors.dart';
import 'package:flutter/material.dart';
import '../../theme/theme_text_styles.dart';
import '../nav/routes.dart';
import '../screens/home.dart';
import '../../utils/helper_size_widgets.dart';

class MyAttendance extends StatefulWidget {

  final String initialRoute;

  const MyAttendance({Key? key, required this.initialRoute}) : super(key: key);
  static String routeName = 'myAttendanceScreen';

  @override
  State<MyAttendance> createState() => _MyAttendanceState();
}

class _MyAttendanceState extends State<MyAttendance> {

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
      title: 'Event Type App',
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                addVerticalSpace(40),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Event Type: ',
                        style: kSemiMediumLabelText2,
                        
                      ),
                      TextSpan(
                        text: 'CcHub Dev Junction',
                        style: kSemiMediumLabelText,
                      ),
                    ],
                  ),
                ),

                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Date: ',
                        style: kSemiMediumLabelText2,
                        //textAlign: TextAlign.left,
                      ),
                      TextSpan(
                        text: '19 October 2023',
                        style: kSemiMediumLabelText,
                      ),
                    ],
                  ),
                ),

                addVerticalSpace(20),

                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Event Type: ',
                        style: kSemiMediumLabelText2,
                      ),
                      TextSpan(
                        text: 'CcHub Dev Junction',
                        style: kSemiMediumLabelText,
                      ),
                    ],
                  ),
                ),

                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Date: ',
                        style: kSemiMediumLabelText2,
                      ),
                      TextSpan(
                        text: '19 October 2023',
                        style: kSemiMediumLabelText,
                      ),
                    ],
                  ),
                ),

                addVerticalSpace(20),

                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Event Type: ',
                        style: kSemiMediumLabelText2,
                      ),
                      TextSpan(
                        text: 'CcHub Dev Junction',
                        style: kSemiMediumLabelText,
                      ),
                    ],
                  ),
                ),

                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Date: ',
                        style: kSemiMediumLabelText2,
                      ),
                      TextSpan(
                        text: '19 October 2023',
                        style: kSemiMediumLabelText,
                      ),
                    ],
                  ),
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
          if (index == 0) {
            // Check if the "Home" icon is tapped (index 1)
            Navigator.pushNamed(context, Home.routeName);
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
    theme: ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
    ),
      );
  }

}


