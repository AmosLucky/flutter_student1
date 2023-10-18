import 'package:flutter/material.dart';
import 'package:flutter_student1/column_tutorial.dart';
import 'package:flutter_student1/form_tutorial.dart';
import 'package:flutter_student1/layout_tutorial.dart';
import 'package:flutter_student1/list_tutorial.dart';
import 'package:flutter_student1/listview_builder_tutorial.dart';
import 'package:flutter_student1/row_tutorial.dart';

import 'layout_practical.dart';


void main() {
  runApp(MyOwnApp());
}

class MyOwnApp extends StatelessWidget {
  const MyOwnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          elevation: 0.0,
          title: Text("WhatsApp"),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.red,
          toolbarHeight: 50.0,
          leading: Icon(Icons.face),
          actions: [
            Icon(Icons.camera_alt),
            Icon(Icons.search),
            Icon(Icons.more_vert)
          ],
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: double.infinity,
            color: Colors.grey,
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: MaterialButton(
                    onPressed: () {
                      var route = MaterialPageRoute(
                          builder: (BuildContext) => ColumnTutorial());

                      Navigator.push(context, route);
                    },
                    color: Colors.green,
                    child: Text("Column tutorial"),
                    textColor: Colors.white,
                  ),
                ),
                Container(
                  width: 300,
                  child: MaterialButton(
                    onPressed: () {
                      var route =  MaterialPageRoute(builder: (BuildContext)=>RowTutorial());
                      Navigator.push(context, route);
                    },
                    child: Text("Row tutorial"),
                    color: Colors.green,
                    textColor: Colors.white,
                  ),
                ),

                Container(
                  width: 300,
                  margin: EdgeInsets.only(top: 10),
                  child: MaterialButton(
                    onPressed: (){
                      var route = MaterialPageRoute(builder: (BuildContext)=>LayoutTutorial());
                      Navigator.push(context, route);
                    },
                    child: Text("Layout / image tutoial"),
                    color: Colors.red,
                    textColor: Colors.white,
                    

                  ),
                ),

                Container(
                  width: 300,
                  margin: EdgeInsets.only(top: 10),
                  child: MaterialButton(
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: (){
                      var route = MaterialPageRoute(builder: (BuildContext)=>LayoutPractical());
                      Navigator.push(context, route);
                    },
                    child: Text("Layout practical"),
                  ),

                ),

                 Container(
                  width: 300,
                  margin: EdgeInsets.only(top: 10),
                  child: MaterialButton(
                    color: Colors.pinkAccent,
                    textColor: Colors.white,
                    onPressed: (){
                      var route = MaterialPageRoute(builder: (BuildContext)
                      =>FormTutorial());
                      Navigator.push(context, route);
                    },
                    child: Text("Form tutorial"),
                  ),

                ),


                Container(
                  width: 300,
                  margin: EdgeInsets.only(top: 10),
                  child: MaterialButton(
                    color: Colors.pinkAccent,
                    textColor: Colors.white,
                    onPressed: (){
                      var route = MaterialPageRoute(builder: (BuildContext)
                      =>ListTutorial());
                      Navigator.push(context, route);
                    },
                    child: Text("List tutorial"),
                  ),

                ),

                Container(
                  width: 300,
                  margin: EdgeInsets.only(top: 10),
                  child: MaterialButton(
                    color: Colors.pinkAccent,
                    textColor: Colors.white,
                    onPressed: (){
                      var route = MaterialPageRoute(builder: (BuildContext)
                      =>ListViewMapTutorial());
                      Navigator.push(context, route);
                    },
                    child: Text("List View Map tutorial"),
                  ),

                )
              ],
            )),
      ),
    );
  }
}