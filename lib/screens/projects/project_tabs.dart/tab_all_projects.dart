import 'package:flutter/material.dart';

import 'package:project_management/screens/projects/project_tabs.dart/components/list_all_projects.dart';

import '../../../components/stacked_images.dart';
import '../../../config/colors.dart';

class TabAllProjects extends StatefulWidget {
  const TabAllProjects({super.key});

  @override
  State<TabAllProjects> createState() => _TabAllProjectsState();
}

class _TabAllProjectsState extends State<TabAllProjects> {
  final List<Map<String, dynamic>> taskData = [
    {
      'title': 'App Project',
      'team': 'Team',
      'description': 'Digital Product Design',
      'isChecked': true,
      'color': kcolorBlue,
      'percent': 0.8,
      'date': 'Apr 21, 2022',
    },
    {
      'title': 'Dashboard UI',
      'team': 'Team',
      'description': 'Digital Product Design',
      'isChecked': true,
      'color': kcolorGreen,
      'percent': 0.5,
      'date': 'Apr 21, 2022',
    },
    {
      'title': 'App UX Planning',
      'team': 'Team',
      'description': 'Digital Product Design',
      'isChecked': false,
      'color': kcolorBlueLight,
      'percent': 0.3,
      'date': 'Apr 21, 2022',
    },
    {
      'title': 'Mobile App Design',
      'team': 'Team',
      'description': 'Digital Product Design',
      'isChecked': false,
      'color': kcolorBlue,
      'percent': 0.1,
      'date': 'Apr 21, 2022',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: taskData.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0), color: kColorWhite),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: ListAllProjects(
                isChecked: taskData[index]['isChecked'],
                projectTitle: taskData[index]['title'],
                team: taskData[index]['team'],
                description: taskData[index]['description'],
                formattedDate: taskData[index]['date'],
                totalTasks: '${index + 5} Tasks',
                stackedImages: buildStackedImages(),
                trailingArrow: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: ktextColorGrey,
                  ),
                ),
                onChanged: (bool? value) {
                  // Handle checkbox state change
                  setState(() {
                    taskData[index]['isChecked'] = value;
                  });
                },
                progressColor: taskData[index]['color'],
                percent: taskData[index]['percent'],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildStackedImages({
    TextDirection direction = TextDirection.rtl,
  }) {
    const double size = 48;
    const double xShift = 12;
    final urlImages = [
      'https://images.unsplash.com/photo-1616766098956-c81f12114571?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      'https://images.unsplash.com/photo-1616766098956-c81f12114571?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    ];

    final items = urlImages.map((urlImage) => buildImage(urlImage)).toList();

    return StackedWidgets(
      direction: direction,
      items: [
        ...items,
        Container(
          width: 25, //you can also add padding if required
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: ktextColorGrey,
          ),
          child: const Center(
            child:Icon(
            Icons.add,
            color: kColorWhite,
          ),
          ),
        ),
      ],
      size: size,
      xShift: xShift,
    );
  }

  Widget buildImage(String urlImage) {
    const double borderSize = 2;

    return ClipOval(
      child: Container(
        padding: const EdgeInsets.all(borderSize),
        color: Colors.white,
        child: ClipOval(
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
