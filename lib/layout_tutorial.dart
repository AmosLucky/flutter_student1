import 'package:flutter/material.dart';

class LayoutTutorial extends StatefulWidget {
  const LayoutTutorial({super.key});

  @override
  State<LayoutTutorial> createState() => _LayoutTutorialState();
}

class _LayoutTutorialState extends State<LayoutTutorial> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Layout tutorial")),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(children: [
          Container(
            child: Image.asset(
              "assets/images/person.jpg",
              height: 200,
              width: size.width,
              fit: BoxFit.cover,
            ),
          ),
         const SizedBox(
            height: 10,
          ),
        const  Text(
            "This is an Icecream Man",
            style:  TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.black),
          ),
          SizedBox(height: 20,),

          Card(
            elevation: 10.0,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Image.asset(
              "assets/images/person.jpg",
              height: 200,
              width: size.width,
              fit: BoxFit.cover,
            ),

            ),
          ),
        ]),
      ),
    );
  }
}
