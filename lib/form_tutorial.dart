import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormTutorial extends StatefulWidget {
  const FormTutorial({super.key});

  @override
  State<FormTutorial> createState() => _FormTutorialState();
}

class _FormTutorialState extends State<FormTutorial> {
  var isMale = false;
  var isFemale = false;
  var radioValue = 1;
  List dropdownList = ["Rice","Beans","Casava","Orange"];
  String dropdownValue = "Rice";
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form tutorial")),
      body: SingleChildScrollView(
        child: Container(child: Card(
          margin: EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(hintText: "Name", labelText: "Enter your name"),
                ),
      
                Container(
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: "Phone number",labelText: "Enter phone number",
                      border: OutlineInputBorder()
                      
      
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration:  InputDecoration(
                      hintText: "Email address",labelText: "Enter Email address",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      // focusedBorder:   OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(15),
                      //   borderSide: const BorderSide(color: Colors.red),)
                      
                      
      
                  )),
      
                   
                ),
                      Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration:  InputDecoration(
                      hintText: "Email address",
                      labelText: "Enter Email address",
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      // focusedBorder:   OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(15),
                      //   borderSide: const BorderSide(color: Colors.red),)
                      
                      
      
                  )),
      
                   
                ),
      
                      Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration:  InputDecoration(
                      hintText: "Password",labelText: "Enter Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      // focusedBorder:   OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(15),
                      //   borderSide: const BorderSide(color: Colors.red),)
                      
                      
      
                  )),
      
                   
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Checkbox(
                        value: isMale,
                        onChanged: (newValue){
                          setState(() {
                            isMale = newValue!;
                          });
                        }),
                        Expanded(child: Text("Male")),
      
                          Checkbox(
                        value: isFemale,
                        onChanged: (newValue){
                          setState(() {
                            isFemale = newValue!;
                          });
                        }),
                        Expanded(child: Text("Female"))
      
      
                    ],
                  ),
      
                   ),
      
                   Container(
                    child: Row(children: [
                      Text("Male"),
                      Radio(
                        value: 1,
                       groupValue: radioValue, 
                       onChanged: (newValue){
                        setState(() {
                          radioValue = newValue!;
                        });
      
                       }),
                       /////RADIO 2
                       ///
                       Text("FeMale"),
                      Radio(value: 2,
                       groupValue: radioValue, 
                       onChanged: (newValue){
                        setState(() {
                          radioValue = newValue!;
                        });
      
                       }),
                       
      
                    ]),
                   ),
      
                   Container(
                    child: DropdownButton(
                      isExpanded: true,
                      value: dropdownValue,
                      items: dropdownList.map((item) => 
                      DropdownMenuItem(
                        value:item,
                        child: Text(item))).toList(),
                      onChanged: (newValue){
                        setState(() {
                          dropdownValue =  newValue.toString();
                        });
      
                      },
      
                      ),
                   ),
      
                   Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: const CircularProgressIndicator(backgroundColor: Colors.pink,),
                   ),
                   Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const CupertinoActivityIndicator(),
                   ),
                    Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const LinearProgressIndicator(),
                   ),

                   Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                     margin: const EdgeInsets.only(top: 15),
                     child: MaterialButton(
                      shape: StadiumBorder(),
                      onPressed: (){},
                      child: Text("Submit"),
                      textColor: Colors.white,
                      color: Colors.blueAccent,
                      ),

                   )
      
      
      
            ]),
          ),
        )),
      ),
    );
  }

}