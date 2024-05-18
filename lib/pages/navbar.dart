import 'package:e_learning/pages/home.dart';
import 'package:e_learning/util/colors.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  List<Widget> screens = const [
    Home(),
    Center(
      child: Text('My Learning'),
    ),
    Center(
      child: Text('My wishlist'),
    ),
    Center(
      child: Text('Settings'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.primarycolor,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.star_border), label: 'Featured'),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_outline), label: 'My Learning'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'Wishlist'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}
