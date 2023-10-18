import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTutorial extends StatefulWidget {
  const ListTutorial({super.key});

  @override
  State<ListTutorial> createState() => _ListTutorialState();
}

class _ListTutorialState extends State<ListTutorial> {
  List<String> names = ["Joshua","Obi", "Ada", "Sunday", "Micheal", "Jude","Josh"];
  List  transport = ["Airplane","Train","Bis","Ship","Foot","Motcycle","Bycycle"];
  List<Widget> icons = [Icon(Icons.flight),Icon(Icons.railway_alert), Icon(Icons.bus_alert),Icon(Icons.flight),Icon(Icons.flight),Icon(Icons.flight),Icon(Icons.flight)];
  // List<int> nums = [45,56,778,88,6];
  // List<dynamic> things = ["obi",56,true,56.0];
  // List<Widget> myWidgets = [Center(),Container(),Text("ii")];
  //  List things1 = ["obi",56,true,56.0];
  //List<Map> users = [{"name":"Obi","email":"eobi@gmail.com"},{},{}];
  @override
  void initState() {
    //  print( names[0]);
    //   print(names[1]);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("List tutorial"),
        ),
        body: Container(
          width: size.width,
          margin: const EdgeInsets.all(10),
          child: ListView.builder(
            // reverse: true,
            // shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
           // scrollDirection: Axis.horizontal,
              itemCount: names.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(5),
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: const  CircleAvatar(
                          backgroundColor: Colors.blueAccent,
                          child: Icon(Icons.person),
                        ),
                        title: Text(names[index]),
                        subtitle: const Text("Good man"),
                        trailing: const Icon(Icons.check_circle, color: Colors.blueAccent,),
                      )),
                );
              }),
        ));
  }
}
