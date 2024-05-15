import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_insta_clone/utils/story_bubbles.dart';
import 'package:flutter_insta_clone/utils/user_posts.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List people = [
    'developer',
    'tester',
    'hr',
    'manager',
    'intern',
    'name',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Instagram",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 32,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(CupertinoIcons.heart),
                ),
                Icon(CupertinoIcons.chat_bubble),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return StoryBubbles(name: people[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPost(name: people[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
