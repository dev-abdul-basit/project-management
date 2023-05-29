import 'package:flutter/material.dart';

import 'package:project_management/config/routes.dart';
import 'package:project_management/config/styles.dart';

import '../../config/appstrings.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  static const String pageId = AppRoutes.search;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          AppStrings.menuSearch,
          style: textStyleAppBarTitle,
        ),
      ),
    );
  }
}
