import 'package:flutter/material.dart';
import 'package:flutter_student1/form_tutorial.dart';
import 'package:flutter_student1/gridview_tutorial.dart';
import 'package:flutter_student1/listview_builder_tutorial.dart';

class PageViewTutorial extends StatefulWidget {
  const PageViewTutorial({super.key});

  @override
  State<PageViewTutorial> createState() => _PageViewTutorialState();
}

class _PageViewTutorialState extends State<PageViewTutorial> {
  PageController controller = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page View")),
      body: PageView(
        //allowImplicitScrolling: true,

        //physics: NeverScrollableScrollPhysics(),
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: const [
          GridViewTutorial(),
          ListViewMapTutorial(),
          FormTutorial()
        ],
        onPageChanged: (index) {
          currentIndex = index;
          setState(() {});
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Favourite", icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(label: "Account", icon: Icon(Icons.person))
        ],
        selectedItemColor: Colors.red,
        selectedFontSize: 20,
        currentIndex: currentIndex,
        // showUnselectedLabels: false,
        onTap: (index) {
          print(index);
          currentIndex = index;
          controller.jumpToPage(index);
          setState(() {});
        },
      ),
    );
  }
}
