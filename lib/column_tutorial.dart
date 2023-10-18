import 'package:flutter/material.dart';

class ColumnTutorial extends StatefulWidget {
  const ColumnTutorial({super.key});

  @override
  State<ColumnTutorial> createState() => _ColumnTutorialState();
}

class _ColumnTutorialState extends State<ColumnTutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Column tutorial")),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
           // crossAxisAlignment: CrossAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Text("This is a text"),
            SizedBox(
              height: 20,
            ),
            Icon(Icons.people),
            TextButton(
              onPressed: () {}, child: Text("Click me")),
            MaterialButton(
              onPressed: () {},
              child: Text("Material Button"),
              color: Colors.red,
            ),
          ]),
        ));
  }
}
