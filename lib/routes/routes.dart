//ignore_for_file: prefer_const_contructors, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:wcdo_app/pages/login_page.dart';
import 'package:wcdo_app/pages/home_page.dart';

//import 'package:route_app/pages/third_page.dart';

class RoutesManager {
  static const String loginPage = '/';
  static const String homePage = '/HomePage';
  static const String infoPage = '/Info';
  static const String createPage = '/Create';
  static const String detailsPage = '/Details';
  static const String editPage = '/Edit';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );

      default:
        throw const FormatException('Route not found : check the routes again');
    }
  }
}
