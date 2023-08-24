import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Register"),),
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(decoration: InputDecoration(hintText: "Enter name"), ),
              TextField(decoration: InputDecoration(hintText: "Enter email"),
                keyboardType: TextInputType.emailAddress,),
              TextField(decoration: InputDecoration(hintText: "Enter password" ), obscureText: true,),
              ElevatedButton(onPressed: (){

              }, child: Text("Register")),
            ],
          ),
        )
    );
  }
}
