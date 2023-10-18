import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
    Map userDeatils;
   UserDetails({super.key, required this.userDeatils});




  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.userDeatils["name"])),
      body: Container(
        child: Column(children: [
          Text("Name: "+widget.userDeatils["name"]),
          Text("phone: "+widget.userDeatils["phone"]),
          Text("Email: "+widget.userDeatils["email"]),
          Text("status: "+widget.userDeatils["status"]),

      ],)),
    );
  }
}