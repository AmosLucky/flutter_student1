import 'package:flutter/material.dart';

class PostView extends StatefulWidget {
  const PostView({super.key});

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("New post, crypto update")),
      body: SingleChildScrollView(
          child: Container(
        child: Column(children: [
          Container(
            child: Image.asset("assets/images/person.jpg",
            width: size.width,
            height: 250,
            fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
           
            child: Card(
              
              
              
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text("This is a new post and we are happy to be able to read th full news of this post This is a new post and we are happy to be able to read th full news of this post This is a new post and we are happy to be able to read th full news of this post This is a new post and we are happy to be able to read th full news of this post This is a new post and we are happy to be able to read th full news of this post This is a new post and we are happy to be able to read th full news of this postThis is a new post and we are happy to be able to read th full news of this post This is a new post and we are happy to be able to read th full news of this postThis is a new post and we are happy to be able to read th full news of this post This is a new post and we are happy to be able to read th full news of this post This is a new post and we are happy to be able to read th full news of this post This is a new post and we are happy to be able to read th full news of this post")))),
          
        ]),
      )),
    );
  }
}
