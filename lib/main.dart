import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(PasswordGenny());

class PasswordGenny extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



class HomePage extends StatefulWidget {
  

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _passwordCharactorsList = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","!","@","#","\$","%","^","&","*","(",")","_","-","+","=","[","]","{","}","1","2","3","4","5","6","7","8","9","0","?","/","\\"];
  TextEditingController _applicationNameController = TextEditingController();
  String myPassword = "";
  List<Map<String, String>> passwordList = [];

  Random r = Random();

  void _generatePassword(int passwordLength, String appName){
    myPassword = "";
    for(int i=0;i<passwordLength;i++){
      int charNo = r.nextInt(_passwordCharactorsList.length);
      myPassword = "$myPassword" + "${_passwordCharactorsList[charNo]}";
    }
    passwordList.add({"application":appName,"password":myPassword});
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>showDialog(context: context, builder: (context)=>Dialog(
          backgroundColor: Colors.white,
          child: Container(
            height: 150.0,
            width: 200.0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value){ 
                      return value!=null && value!="" ? null : "enter application name";
                      },
                    autovalidate: true,
                    controller: _applicationNameController,
                    decoration: InputDecoration(
                      hintText: "Add Application name"
                    ),
                  ),
                )
                ,
                RaisedButton(onPressed: (){
                  if(_applicationNameController.text != null && _applicationNameController.text != ""){
                    _generatePassword(8, _applicationNameController.text);
                  }
                    Navigator.pop(context);

                }, 
                child: Text('Generate Password', style: TextStyle(color: Colors.white),),
                color: Color(0xff104055)),
              ],
            ),
          ),

        )),
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey[700],
      ),
      backgroundColor: Color(0xff104055),
      appBar: AppBar(
        backgroundColor: Color(0xff104055),
        title: Text('Password'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: List.generate(passwordList.length, (index) => ListTile(
            title: Text(passwordList[index]['application'], style: TextStyle(color: Colors.white),),
            subtitle: Text(passwordList[index]['password'], style: TextStyle(color: Colors.white),),
          )),
        ),
      )
    );
  }
}
