import 'package:flutter/material.dart';
import 'package:flutter_test_app/components/tool_bar.dart';
import 'package:flutter_test_app/components/user_avatar.dart';
import 'package:flutter_test_app/config/app_routes.dart';
import 'package:flutter_test_app/config/app_strings.dart';
import 'package:flutter_test_app/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: AppStrings.profile,
        actions: [
          PopupMenuButton<ProfileMenu>(onSelected: (value) {
            switch (value) {
              case ProfileMenu.edit:
                Navigator.of(context).pushNamed(AppRoutes.editProfile);
                break;
              case ProfileMenu.logout:
                print('Log out');
                break;
              default:
            }
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text(AppStrings.edit),
                value: ProfileMenu.edit,
              ),
              PopupMenuItem(
                child: Text(AppStrings.logout),
                value: ProfileMenu.logout,
              ),
            ];
          })
        ],
      ),
      body: Column(
        children: [
          UserAvatar(
            size: 90,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'TKH',
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text('TKH', style: AppText.subtitle3),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.followers)
                ],
              ),
              Column(
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.posts)
                ],
              ),
              Column(
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.following)
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
