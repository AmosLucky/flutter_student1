import 'package:flutter/material.dart';
import 'package:flutter_student1/form_tutorial.dart';
import 'package:flutter_student1/gridview_tutorial.dart';
import 'package:flutter_student1/listview_builder_tutorial.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;

  List<Widget> pages = [
    GridViewTutorial(),
    ListViewMapTutorial(),
    FormTutorial()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Nav"),
      ),
      body: Container(
        child: pages[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Favourite", icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(label: "Account", icon: Icon(Icons.person))
        ],
        selectedItemColor: Colors.red,
        selectedFontSize: 20,
        currentIndex: selectedIndex,
        // showUnselectedLabels: false,
        onTap: (index) {
          print(index);
          selectedIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
