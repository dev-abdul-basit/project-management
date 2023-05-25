import 'package:flutter/material.dart';

import 'package:project_management/config/colors.dart';
import 'package:project_management/config/size_config.dart';

import 'package:project_management/config/styles.dart';
import 'package:project_management/screens/home/components/task_list.dart';
import 'package:project_management/screens/projects/project_screen.dart';

import '../../../components/stacked_images.dart';
import 'home_containers.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<Map<String, dynamic>> taskData = [
    {
      'title': 'Dashboard Design',
      'isChecked': true,
      'color': kcolorBlue,
      'percent': 0.8,
    },
    {
      'title': 'Mobile App Design',
      'isChecked': true,
      'color': kcolorGreen,
      'percent': 0.5,
    },
    {
      'title': 'Wireframe Design',
      'isChecked': false,
      'color': kcolorBlueLight,
      'percent': 0.3,
    },
    {
      'title': 'Mobile App Design',
      'isChecked': false,
      'color': kcolorBlue,
      'percent': 0.1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          _buildHeader(),
           SizedBox(height: getProportionateScreenWidth(24)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: CustomContainer(
                  backgroundColor: kcolorBlue,
                  icon: Icons.home,
                  text: 'Home',
                  onPressed: () {
                    // Handle container click
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProjectsScreen()));
                  },
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(12)),
              Expanded(
                child: CustomContainer(
                  backgroundColor: kcolorGreen,
                  icon: Icons.settings,
                  text: 'Settings',
                  onPressed: () {
                    // Handle container click
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenWidth(12)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: CustomContainer(
                  backgroundColor: kcolorBlueLight,
                  icon: Icons.info,
                  text: 'Info',
                  onPressed: () {
                    // Handle container click
                  },
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(12)),
              Expanded(
                child: CustomContainer(
                  backgroundColor: kcolorVilot,
                  icon: Icons.person,
                  text: 'Profile',
                  onPressed: () {
                    // Handle container click
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenWidth(24)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Add Task',
                style: headingStyleLargeTwo,
              ),
              Text(
                'All Tasks',
                style: headingStyleSmall,
              )
            ],
          ),
         SizedBox(height: getProportionateScreenWidth(12)),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: taskData.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: kColorWhite),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: TasksList(
                      isChecked: taskData[index]['isChecked'],
                      labelText: taskData[index]['title'],
                      secondChild: buildStackedImages(),
                      trailingArrow: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: ktextColorGrey,
                          size: 20,
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
          ),
        ]),
      ),
    );
  }

  Widget buildStackedImages({
    TextDirection direction = TextDirection.rtl,
  }) {
    final double size = 48;
    final double xShift = 12;
    final urlImages = [
      'https://images.unsplash.com/photo-1616766098956-c81f12114571?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      'https://images.unsplash.com/photo-1616766098956-c81f12114571?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    ];

    final items = urlImages.map((urlImage) => buildImage(urlImage)).toList();

    return StackedWidgets(
      direction: direction,
      items: items,
      size: size,
      xShift: xShift,
    );
  }

  Widget buildImage(String urlImage) {
    final double borderSize = 2;

    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(borderSize),
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

  Widget _buildHeader() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        'Today',
        style: headingStyleXL,
      ),
      const SizedBox(
        height: 3,
      ),
      Row(
        children: [
          const Icon(
            Icons.calendar_today,
            color: kcolorBlue,
          ),
          Text(
            ' Apr 26, 2023',
            style: headingStyleSmall.copyWith(
                color: ktextColorBlack.withOpacity(0.7)),
          )
        ],
      ),
    ]);
  }
}
