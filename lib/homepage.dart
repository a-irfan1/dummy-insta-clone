import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/screens/home.dart';
import 'package:flutter_insta_clone/screens/post.dart';
import 'package:flutter_insta_clone/screens/profile.dart';
import 'package:flutter_insta_clone/screens/reels.dart';
import 'package:flutter_insta_clone/screens/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> children = [
    Home(),
    const Search(),
    const Post(),
    const Reels(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: 'post'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection), label: 'reels'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'account'),
        ],
      ),
    );
  }
}
