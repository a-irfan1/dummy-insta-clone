import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/utils/explore_grid.dart';
import 'package:flutter_insta_clone/utils/story_bubbles.dart';
import 'package:flutter_insta_clone/utils/user_posts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '50',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 25),
                            ),
                            Text('posts'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '4391',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 25),
                            ),
                            Text('followers'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '86',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 25),
                            ),
                            Text('following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'developer',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    child: Text('i develop flutter apps'),
                  ),
                  Text(
                    'developer.com',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: Text('Edit Profile'),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: Text('Insights'),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  StoryBubbles(name: 'summer'),
                  StoryBubbles(name: 'friends'),
                  StoryBubbles(name: 'coding'),
                  StoryBubbles(name: 'vacation'),
                ],
              ),
            ),
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_on),
                ),
                Tab(icon: Icon(Icons.video_collection)),
                Tab(icon: Icon(Icons.account_circle))
              ],
            ),
            Expanded(
                child: TabBarView(
              children: [ExploreGrid(), ExploreGrid(), ExploreGrid()],
            ))
          ],
        ),
      ),
    );
  }
}
