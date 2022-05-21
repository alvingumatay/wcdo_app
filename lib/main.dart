//ignore_for_file: prefer_const_contructors, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:wcdo_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: RoutesManager.loginPage,
      onGenerateRoute: RoutesManager.generateRoute,
    );
  }
}
