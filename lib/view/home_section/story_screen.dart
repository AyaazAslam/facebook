import 'package:flutter/material.dart';
import 'package:widgets/models/user_post.dart';
import 'package:widgets/utils/widgets/butn.dart';

class MainStoryScreen extends StatefulWidget {
  const MainStoryScreen({super.key});

  @override
  State<MainStoryScreen> createState() => _MainStoryScreenState();
}

class _MainStoryScreenState extends State<MainStoryScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: height * 0.1,
            width: double.infinity,
            color: Colors.blueAccent,
            child: Text("FaceBook"),
          ),
          Container(
            width: double.infinity,
            height: height * 0.25,
            color: Colors.teal,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: UserPost.user.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return StoryPostCard(
                  storttext: "${UserPost.user[index].text}",
                  storyDp: "${UserPost.user[index].dp}",
                  backgroundImage:
                      "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
