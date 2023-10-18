import 'package:flutter/material.dart';

class GridViewTutorial extends StatefulWidget {
  const GridViewTutorial({super.key});

  @override
  State<GridViewTutorial> createState() => _GridViewTutorialState();
}

class _GridViewTutorialState extends State<GridViewTutorial> {
  List<Map> users = [
    {
      "name": "Mark Obi",
      "email": "obimark@gmail.com",
      "phone": "0909784747",
      "status": "active",
      "image": "https://reqres.in/img/faces/7-image.jpg"
    },
    {
      "name": "John Kings",
      "email": "marobi@gmail.com",
      "phone": "080767890",
      "status": "failed",
      "image": "https://reqres.in/img/faces/8-image.jpg"
    },
    {
      "name": "Queen jush",
      "email": "jussh@gmail.com",
      "phone": "0815678909",
      "status": "warning",
      "image": "https://reqres.in/img/faces/9-image.jpg"
    },
    {
      "name": "Kings maley",
      "email": "bettly@gmail.com",
      "phone": "070898777",
      "status": "active",
      "image": "https://reqres.in/img/faces/10-image.jpg"
    },
    {
      "name": "Flafor john",
      "email": "blends@gmail.com",
      "phone": "0905678787",
      "status": "active",
      "image": "https://reqres.in/img/faces/11-image.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text("Grid view tutorial")),
      body: Container(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: users.length,
              itemBuilder: (ctx, index) {
                return Card(
                  margin: const EdgeInsets.all(5),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            height: 10,
                            width: 200,
                            //color: Colors.red,
                            child: const Icon(Icons.more_vert_sharp),
                          ),
                          Container(
                            // color: Colors.red,
                            alignment: Alignment.center,
                            height: size.height / 4,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        NetworkImage(users[index]['image']),
                                  ),
                                  Text(users[index]['name'])
                                ]),
                          )
                        ]),
                  ),
                );
              })),
    );
  }
}
