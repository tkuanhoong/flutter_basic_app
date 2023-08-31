import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_app/components/post_item.dart';
import 'package:flutter_test_app/components/tool_bar.dart';
import 'package:flutter_test_app/config/app_icons.dart';
import 'package:flutter_test_app/config/app_routes.dart';
import 'package:flutter_test_app/config/app_strings.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> users = [];
  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: ToolBar(
        title: AppStrings.appName,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.nearby);
            },
            icon: SvgPicture.asset(AppIcons.icLocation),
          )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 24);
        },
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 1000; i++) {
      users.add("User number ${i + 1}");
    }
  }
}
