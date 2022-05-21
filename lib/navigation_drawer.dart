import 'package:flutter/material.dart';
import 'package:wcdo_app/drawer_item.dart';

import 'package:wcdo_app/pages/login_page.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              Center(
                child: ClipRect(
                  child: Image.asset('assets/logo.png',
                      width: 100, height: 100, fit: BoxFit.cover),
                ),
              ),
              DrawerItem(
                name: 'Profile',
                icon: Icons.people,
                onPressed: () => onItemPressed(context, index: 0),
              ),
              const Divider(color: Colors.red),
              const SizedBox(height: 20),
              DrawerItem(
                name: 'About Us',
                icon: Icons.info,
                onPressed: () => onItemPressed(context, index: 1),
              ),
              const Divider(color: Colors.red),
              DrawerItem(
                name: 'Settings',
                icon: Icons.vpn_key,
                onPressed: () => onItemPressed(context, index: 2),
              ),
              const SizedBox(height: 20),
              const Divider(color: Colors.red),
              DrawerItem(
                name: 'Sign Out',
                icon: Icons.exit_to_app,
                onPressed: () => onItemPressed(context, index: 3),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);
    switch (index) {
      case 3:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
    }
  }
}
