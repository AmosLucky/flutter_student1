import 'package:flutter/material.dart';
import 'package:flutter_student1/post_view.dart';

class LayoutPractical extends StatefulWidget {
  const LayoutPractical({super.key});

  @override
  State<LayoutPractical> createState() => _LayoutPracticalState();
}

class _LayoutPracticalState extends State<LayoutPractical> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        
        leading: Icon(Icons.menu) ,
        backgroundColor: Colors.blue[900],
        toolbarHeight: 100,
        actions: [
          Container(
            
            margin: EdgeInsets.only(right: 10),
            child:const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person),
              ),
          )
        ],
        title: Container(
          margin: EdgeInsets.only(top:50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("All news",style: TextStyle(fontSize: 15,),),
            Text("Fashion",style: TextStyle(fontSize: 15,),),
             Text("Sportas",style: TextStyle(fontSize: 15,),),
              Text("Entertainment",style: TextStyle(fontSize: 15,),),
          ]),
        ),
        ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Column(
            children: [
              Container(
                width: size.width,
                height: 220,
                color: Colors.amber,
                child:Stack(children: [
                  Image.asset(
                    "assets/images/person.jpg", width: size.width,
                    fit: BoxFit.fill,
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 180),
                      child: const Text("Buy ice cream from use and get one for freee",
                       style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                        fontSize: 20),)
                       ),


                      


                ],)

              ),
               Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                        child:  Card(
                          elevation: 5,
                          

                          child:  Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              Text("Trending", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                              CircleAvatar(radius: 15,
                              child: Icon(Icons.arrow_right),
                              )
                            ]),
                          ),
                        ),
                       ),


                       InkWell(
                        onTap: (){
                          var route = MaterialPageRoute(builder: (BuildContext)=>PostView());
                          Navigator.push(context, route);

                        },
                         child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          width: size.width,
                          height: 120,
                          child: Card(
                            elevation: 5,
                            child: Row(children: [
                              Expanded(child: Image.asset("assets/images/person.jpg")),
                              SizedBox(width: 5,),
                       
                              Expanded(child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Card(
                                color: Colors.red,
                                child: Container(
                                  height: 20,
                                  width: 50,
                                  child: Center(child: Text("News",style: TextStyle(color: Colors.white),))),
                              ),
                       
                              Container(
                                child: Text("This is a new of some one that won millions",style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                               Container(
                                child: Text("This is a new of some one that won millions",style: TextStyle(fontSize: 12),),
                              )
                       
                              ],))
                            ],)
                            ),
                         ),
                       ),

                       Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: size.width,
                        height: 120,
                        child: Card(
                          elevation: 5,
                          child: Row(children: [
                            Expanded(child: Image.asset("assets/images/person.jpg")),
                            SizedBox(width: 5,),

                            Expanded(child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Card(
                              color: Colors.red,
                              child: Container(
                                height: 20,
                                width: 50,
                                child: Center(child: Text("News",style: TextStyle(color: Colors.white),))),
                            ),

                            Container(
                              child: Text("This is a new of some one that won millions",style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                             Container(
                              child: Text("This is a new of some one that won millions",style: TextStyle(fontSize: 12),),
                            )

                            ],))
                          ],)
                          ),
                       ),
                       Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: size.width,
                        height: 120,
                        child: Card(
                          elevation: 5,
                          child: Row(children: [
                            Expanded(child: Image.asset("assets/images/person.jpg")),
                            SizedBox(width: 5,),

                            Expanded(child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Card(
                              color: Colors.red,
                              child: Container(
                                height: 20,
                                width: 50,
                                child: Center(child: Text("News",style: TextStyle(color: Colors.white),))),
                            ),

                            Container(
                              child: Text("This is a new of some one that won millions",style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                             Container(
                              child: Text("This is a new of some one that won millions",style: TextStyle(fontSize: 12),),
                            )

                            ],))
                          ],)
                          ),
                       )


          ]),

        ),
      ),
    );
  }
}

