import 'package:flutter/material.dart';
import 'package:widgets/models/user_post.dart';
import 'package:widgets/utils/widgets/butn.dart';

class HomwPage extends StatefulWidget {
  const HomwPage({super.key});

  @override
  State<HomwPage> createState() => _HomwPageState();
}

class _HomwPageState extends State<HomwPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: height * 0.25,
            color: Colors.teal[100],
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: UserPost.user.length,
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
