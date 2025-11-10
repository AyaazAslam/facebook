import 'package:flutter/material.dart';
import 'package:widgets/view/friends_request/frined_req_screen.dart';
import 'package:widgets/view/home_section/homw_page.dart';
import 'package:widgets/view/notification/notification_screen.dart';
import 'package:widgets/view/people/people.dart';
import 'package:widgets/view/setting/setting.dart';

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
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            // 🔹 Custom Facebook-style top bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.blueAccent),

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
                  HomwPage(),
                  FrinedReqScreen(),
                  PeopleScreen(),
                  NotificationScreen(),
                  PeopleScreen(),
                  SettingScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
