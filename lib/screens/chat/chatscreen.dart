import 'package:flutter/material.dart';
import 'package:project_management/config/appstrings.dart';

import 'package:project_management/config/routes.dart';
import 'package:project_management/config/styles.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  static const String pageId = AppRoutes.chat;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          AppStrings.menuChat,
          style: textStyleAppBarTitle,
        ),
      ),
    );
  }
}
