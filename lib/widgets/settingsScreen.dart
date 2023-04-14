// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Layout.dart';
import 'Style.dart';
import 'Setting.dart';
import 'accountScreen.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.logout,
              color: Colors.black87,
            ),
            onPressed: () {
              // TODO: Implement logout functionality.
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 25.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Settings',
                style: theme.textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Account',
                style: theme.textTheme.subtitle1?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Account(),
                    ),
                  );
                },
                child: const AccountDetails(
                  name: 'Test Name',
                  info: 'Personal Info',
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Text(
                'Settings',
                style: theme.textTheme.subtitle1?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SettingsWidget(
                backgroundColor: Colors.red.shade50,
                iconColor: const Color(0xFFf61111),
                title: 'Language',
                icon: Icons.public,
                subtTitle: 'English',
                // ignore: prefer_const_literals_to_create_immutables
                dropDownItems: [
                  DropdownMenuItem(
                    child: Text('English'),
                    value: 'en',
                  ),
                  DropdownMenuItem(
                    child: Text('Español'),
                    value: 'es',
                  ),
                  DropdownMenuItem(
                    child: Text('Français'),
                    value: 'fr',
                  ),
                ],
                onChanged: (value) {
                  // TODO: Implement language change functionality.
                },
                switchSubtTitle: '',
                switchValue: true,
                onSwitchChanged: (value) {},
              ),
              SizedBox(
                height: 10.h,
              ),
              SettingsWidget(
                backgroundColor: const Color(0xFFc7e5f3),
                iconColor: Colors.blue.shade200,
                title: 'Notifications',
                icon: Icons.notifications_active,
                subtTitle: '',
                switchValue: true,
                onSwitchChanged: (value) {
                  // TODO: Implement notifications switch functionality.
                },
                switchSubtTitle: 'Turn on all notifications',
                dropDownItems: [],
                onChanged: (value) {},
              ),
              SizedBox(
                height: 10.h,
              ),
              ModeWidget(
                  backgroundColor: const Color(0xFFebc7f1),
                  iconColor: const Color(0xFFd701fd),
                  title: 'Dark Mode',
                  subtTitle: 'off',
                  icon: Icons.brightness_6,
                  switchValue: true,
                  onSwitchChanged: (value) {
                    // TODO: Implement
                  }),
              SizedBox(
                height: 10.h,
              ),
              SettingsWidget(
                backgroundColor: const Color(0xFFF3D4D9),
                iconColor: const Color(0xFFF37878),
                title: 'Help',
                icon: Icons.support,
                subtTitle: '',
                dropDownItems: [],
                onSwitchChanged: (value) {},
                switchValue: false,
                switchSubtTitle: '',
                onChanged: (value) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
