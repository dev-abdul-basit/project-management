import 'package:flutter/material.dart';

import 'package:project_management/config/routes.dart';
import 'package:project_management/config/styles.dart';

import '../../config/appstrings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  static const String pageId = AppRoutes.settings;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          AppStrings.menuSetting,
          style: textStyleAppBarTitle,
        ),
      ),
    );
  }
}
