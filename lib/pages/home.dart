// import 'package:flutter/gestures.dart';
// import 'package:expanded/pages/util/add_to_story.dart';
import 'package:flutter/material.dart';
import 'package:expanded/pages/util/bubble_stories.dart';
import 'package:expanded/pages/util/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({Key? key}) : super(key: key);
  final List people = [
    'kotethefriend',
    'kate',
    'montena',
    'mike',
    'Joie',
    'henry',
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
              Text('Instagram'),
              Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share),
                ],
              ),
            ],
          )),
      body: Column(
        children: [
          //stories
          SizedBox(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(
                    text: people[index],
                  );
                }),
          ),

          //POSTS
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPosts(
                  name: people[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
