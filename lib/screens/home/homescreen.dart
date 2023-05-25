import 'package:flutter/material.dart';
import 'package:project_management/screens/home/components/body.dart';

import '../../components/app_drawer.dart';

import '../../config/appstrings.dart';
import '../../config/routes.dart';
import '../../config/size_config.dart';
import '../../config/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String pageId = AppRoutes.home;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabID = 1;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      drawer: AppDrawer(),
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      appBar: _buildAppbar(),
      body: const Body(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      iconTheme: const IconThemeData(color: Colors.black),
      centerTitle: true,
      leading: IconButton(
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        icon: const Icon(
          Icons.menu,
          size: 30,
        ),
      ),
      title: const Text(
        AppStrings.home,
        style: textStyleAppBarTitle,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
            radius: 20,
          ),
        ),
      ],
    );
  }
}
