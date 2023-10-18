class BasicList{
 
   BasicList(){
    List<String> names = ["Obi","MarkObi","John"];
  print(names[0]);
  
  
  //LIST of LIST
 
  List<List> jss1 = [["john","mark"],["colins","josh"],["Amos"]];
  
  print(jss1[0][0]);
  
   print(jss1[1][1]);
  
  ///MAP
  var student = {"name":"obi","age":"20","gender":"male"};
  print(student["name"]);
  print(student["gender"]);
  
  ///LIST OF MAP
  
  List<Map> students = [
    {"name":"goodns","age":"20","gende":"male"},
    {"name":"sundy","age":"21","gnder":"male"},
    {"name":"mark","age":"24","gender":"Female"}];
  

  }

}