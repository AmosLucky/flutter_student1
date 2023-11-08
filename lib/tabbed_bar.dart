import 'package:flutter/material.dart';
import 'package:flutter_student1/form_tutorial.dart';
import 'package:flutter_student1/gridview_tutorial.dart';
import 'package:flutter_student1/listview_builder_tutorial.dart';

class TabbedBar extends StatefulWidget {
  const TabbedBar({super.key});

  @override
  State<TabbedBar> createState() => _TabbedBarState();
}

class _TabbedBarState extends State<TabbedBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Whatsapp"),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: "Favourite",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Person",
              ),
            ]),
          ),
          body: const TabBarView(children: [
            ListViewMapTutorial(),
            GridViewTutorial(),
            FormTutorial()
          ]),
        ));
  }
}
