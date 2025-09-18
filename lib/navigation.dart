import 'package:flutter/material.dart';
import 'page/home_page.dart';
import 'page/about_page.dart';
import 'page/contact_page.dart';
import 'page/gallery_page.dart';
import 'page/projects_page.dart';

class MainNavigationPage extends StatefulWidget {
  @override
  _MainNavigationPageState createState() => _MainNavigationPageState();
}
class _MainNavigationPageState extends State {
  int_selectedIndex = 2;
  PageController _pageController = PageController(initialPage: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            AboutPage(),
            ProjectsPage(),
            HomePage(),
            GalleryPage(),
            ContactPage(),
          ],
          onPageChanged: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
    ),
    ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: _onTabTapped,
          selectedItemColor: Colors.pinkAccent,
          unselectedItemColor: Colors.white,
          elevation: 8.0,
          backgroundColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About Me'),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Projects'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.photo_library), label: 'Gallery'),
            BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: 'Contact'),

          ],
        );
    );
  }
}
void _onTabTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
  _pageController.animateToPage(
    index,
    duration: Duration(milliseconds: 300),
    curve: Curves.easeInOut,
    );
  }
]
