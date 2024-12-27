import 'package:flutter/material.dart';
import 'package:supremum_app/screen/download_view.dart';
import 'package:supremum_app/screen/home_view.dart';
import 'package:supremum_app/screen/orientation.dart';
import 'package:supremum_app/screen/questions_view.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;

  // Pages to display in the IndexedStack
  final List<Widget> _pages = [
    const HomePage(),
    const QuestionPage(),
    const OrientationPage(),
    const DownloadPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.description),
              label: 'Questions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Orientation',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download),
              label: 'Downloads',
            )
          ]),
    );
  }
}
