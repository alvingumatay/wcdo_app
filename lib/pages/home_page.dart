//ignore_for_file: prefer_const_contructors,  deprecated_member_use
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
import 'package:wcdo_app/navigation_drawer.dart';

import '../navigation_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text(
          'WAC-DONALD',
          style: TextStyle(
            color: Colors.yellow,
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      backgroundColor: Colors.red[100],
      // ignore: unnecessary_new

      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
                margin: const EdgeInsets.all(8.0),
                child: Material(
                  child: InkWell(
                    child: Image.asset(
                      'assets/images/burger.jpg',
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    onTap: () {},
                  ),
                )),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Image.asset(
                  'assets/images/burgersteak.jpg',
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                onTap: () {},
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Image.asset(
                  'assets/images/chicken.jpg',
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Image.asset(
                  'assets/images/combo.jpg',
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                onTap: () {},
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Image.asset(
                  'assets/images/download.jpg',
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                onTap: () {},
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Image.asset(
                  'assets/images/image.jpg',
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.room_service),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount),
            label: 'Promos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location',
          ),
        ],
      ),
    );
  }
}
