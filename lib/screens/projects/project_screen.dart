import 'package:flutter/material.dart';
import 'package:project_management/config/appstrings.dart';

import 'package:project_management/config/colors.dart';

import 'package:project_management/config/routes.dart';
import 'package:project_management/screens/projects/project_tabs.dart/tab_all_projects.dart';


import '../../config/styles.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});
  static const String pageId = AppRoutes.projects;

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        backgroundColor: kBgColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: ktextColorBlack),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          AppStrings.projects,
          style: textStyleAppBarTitle,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert_rounded),
            onPressed: () {
              // Handle action icon button press
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: BoxDecoration(
                color: ktextColorGrey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 4),
                child: TabBar(
                  controller: _tabController,
                  // give the indicator a decoration (color and border radius)
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      8.0,
                    ),
                    color: kBgColor,
                  ),
                  labelColor: kcolorBlue,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(text: AppStrings.ongoing),
                    Tab(text: AppStrings.all),
                    Tab(text: AppStrings.completed),
                  ],
                ),
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  TabAllProjects(),
                  TabAllProjects(),
                  TabAllProjects(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
