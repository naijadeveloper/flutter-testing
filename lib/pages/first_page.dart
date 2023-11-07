// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:todo/pages/home_page.dart';
import 'package:todo/pages/settings_page.dart';
import 'package:todo/pages/profile_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    HomePage(),

    ProfilePage(),

    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entry Page"),
        centerTitle: true,
        elevation: 0,
      ),

      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          // home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          // profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            tooltip: "Go to Profile",
          ),

          // setting
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ]
      ),

      // drawer: Drawer(
      //   backgroundColor: Colors.deepPurple[50],
      //   child: Column(
      //     children: [
      //       DrawerHeader(
      //         child: Icon(
      //           Icons.favorite,
      //           size: 48
      //         )
      //       ),

      //       ListTile(
      //         leading: Icon(
      //           Icons.home,
      //         ),
      //         title: Text("H O M E"),
      //         subtitle: Text("Subtitle me? Nah!"),
      //         trailing: Icon(Icons.favorite),
      //         titleAlignment: ListTileTitleAlignment.center,
      //         onTap: () {
      //           //
      //           Navigator.pop(context);
      //           //
      //           Navigator.pushNamed(context, "/home_page");
      //         }
      //       ),

      //       ListTile(
      //         leading: Icon(
      //           Icons.settings,
      //         ),
      //         title: Text("S E T T I N G S"),
      //         onTap: () {
      //           //
      //           Navigator.pop(context);
      //           //
      //           Navigator.pushNamed(context, "/settings_page");
      //         },
      //       )
      //     ],
      //   )
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       // Navigator.push(context, 
      //       //   MaterialPageRoute(
      //       //     builder: (context) => SecondPage()
      //       //   )
      //       // );
      //       Navigator.pushNamed(context, "/secondPage");
      //     },
      //     child: Text("Go to second page"),
      //   )
      // )
    );
  }
}
