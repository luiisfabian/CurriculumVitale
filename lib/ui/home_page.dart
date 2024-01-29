import 'package:curriculum_vitale/ui/about/about_page.dart';
import 'package:curriculum_vitale/ui/briefcase/briefcase_page.dart';
import 'package:curriculum_vitale/ui/contact/contact_page.dart';
import 'package:curriculum_vitale/ui/profile/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

    int _selectedIndex = 0;
static const List<Widget> _widgetOptions = <Widget>[
    ProfilePage(),
    AboutPage(),
    BriefcasePage(),
    ContactPage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
         bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(color: Colors.black),
          selectedIconTheme: IconThemeData(color: Colors.black),
          

backgroundColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(  
              backgroundColor: Colors.black,
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.book),
              label: 'Portafolio',
            ),
            //  BottomNavigationBarItem(
            //   backgroundColor: Colors.black,
            //   icon: Icon(Icons.phone),
            //   label: 'Contact',
            // ),
          ],
           currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        ),

      );
  }
}