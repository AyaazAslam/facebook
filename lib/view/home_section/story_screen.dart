import 'package:flutter/material.dart';
import 'package:widgets/models/user_post.dart';
import 'package:widgets/utils/widgets/butn.dart';

class MainStoryScreen extends StatefulWidget {
  const MainStoryScreen({super.key});

  @override
  State<MainStoryScreen> createState() => _MainStoryScreenState();
}

class _MainStoryScreenState extends State<MainStoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            // 🔹 Custom Facebook-style top bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueAccent,

                border: Border(
                  bottom: BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ), // remove line
                ),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Row: Facebook title + icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "facebook",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.search, color: Colors.blueAccent),
                          ),
                          SizedBox(width: 10),
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.message,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // 🔹 Custom TabBar (below the blue header)
                  TabBar(
                    controller: _tabController,
                    dividerHeight: 0,
                    indicatorColor: Colors.white,
                    indicatorWeight: 1,

                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white70,
                    tabs: const [
                      Tab(icon: Icon(Icons.home)),
                      Tab(icon: Icon(Icons.ondemand_video)),
                      Tab(icon: Icon(Icons.group_add)),
                      Tab(icon: Icon(Icons.notifications)),
                      Tab(icon: Icon(Icons.person)),
                      Tab(icon: Icon(Icons.settings)),
                    ],
                  ),
                ],
              ),
            ),

            // 🔹 TabBarView content
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // 🏠 Home tab with stories
                  Column(
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
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Facebook Home Feed",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // 🎥 Videos tab
                  const Center(
                    child: Text(
                      "🎥 Video Page",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // 👥 Friends tab
                  const Center(
                    child: Text(
                      "👥 Add Friends Page",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // 🔔 Notifications tab
                  const Center(
                    child: Text(
                      "🔔 Notifications Page",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // 👤 Profile tab
                  const Center(
                    child: Text(
                      "👤 Profile Page",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // ⚙️ Settings tab
                  const Center(
                    child: Text(
                      "⚙️ Settings Page",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
