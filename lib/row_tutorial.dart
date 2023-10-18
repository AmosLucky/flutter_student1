import 'package:flutter/material.dart';

class RowTutorial extends StatefulWidget {
  const RowTutorial({super.key});

  @override
  State<RowTutorial> createState() => _RowTutorialState();
}

class _RowTutorialState extends State<RowTutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Tutorial")),
      body: Container(
        height: MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).size.height,
        child: Column(children: [

          Row(
            //mainAxisAlignment: MainAxisAlignment.end,
            //mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(height: 100,width: 100,color: Colors.green,
            margin: EdgeInsets.only(right: 10),
            ),
              Container(height: 100,width: 100,color: Colors.red,),
              SizedBox(width: 10,),
               Container(height: 100,width: 100,color: Colors.black,)

          ],),


          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            color: Colors.amber,
            margin: EdgeInsets.only(top: 10,left: 10,right: 10),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
              margin: EdgeInsets.all(30),
              child: Column(children: [
                Container(height: 100,width: 100,color: Colors.red,),
                Container(height: 100,width: 100,color: Colors.black,)
              ]),
              
            ),
          )

        ],)
      ),
    );
  }
}