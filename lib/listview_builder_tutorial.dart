import 'package:flutter/material.dart';
import 'package:flutter_student1/users_details.dart';

class ListViewMapTutorial extends StatefulWidget {
  const ListViewMapTutorial({super.key});

  @override
  State<ListViewMapTutorial> createState() => _ListViewMapTutorialState();
}

class _ListViewMapTutorialState extends State<ListViewMapTutorial> {
  List<Map> users = [
    {"name":"Mark Obi","email":"obimark@gmail.com","phone":"0909784747","status":"active"},
    {"name":"John Kings","email":"marobi@gmail.com","phone":"080767890","status":"failed"},
    {"name":"Queen jush","email":"jussh@gmail.com","phone":"0815678909","status":"warning"},
    {"name":"Kings maley","email":"bettly@gmail.com","phone":"070898777","status":"active"},
    {"name":"Flafor john","email":"blends@gmail.com","phone":"0905678787","status":"active"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("List view practical")),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                var route = MaterialPageRoute(builder: (BuildContext)=>
                UserDetails(userDeatils:users[index] ,));
                Navigator.push(context, route);
              },
              child: Card(
                child: ListTile(
                  leading: const  CircleAvatar(backgroundImage: AssetImage("assets/images/person.jpg")),
                  title: Text(users[index]["name"]),
                  subtitle: Text(users[index]["email"]),
                  trailing: users[index]["status"] == "active"? 
                 const Icon(Icons.check_circle, color: Colors.green,)
                  : const Icon(Icons.cancel_outlined,color: Colors.red,) ,
                ),
              ),
            );

          })
        ),
    );
  }
}