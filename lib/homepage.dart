import 'package:flutter/material.dart';
import 'package:expanded/pages/home.dart';
import 'package:expanded/pages/profile.dart';
import 'package:expanded/pages/reels.dart';
import 'package:expanded/pages/search.dart';
import 'package:expanded/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //nevigate around the navigation bar
  int _selectedIndex = 0;
  void _navigateBottonBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //different pages to navigate to
  final List<Widget> _children = [
    UserHome(),
    const UserSearch(),
    const UserReels(),
    const UserShop(),
    const UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottonBar,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_call,
                color: Colors.grey,
              ),
              label: 'reels'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
                color: Colors.grey,
              ),
              label: 'shop'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: 'profile'),
        ],
      ),
    );
  }
}
