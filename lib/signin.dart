import 'dart:html';

import 'package:flutter/material.dart';
class signin extends StatefulWidget {
  signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {

  @override
  late String _email;
  late String password;




  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [TextField(decoration: InputDecoration( 
        icon: const Icon(Icons.person),  
              hintText: 'Enter your Email',  
              labelText: 'Email', ),
      onChanged: (value){
        setState(() {
          _email=value;
        });
      },
      ),
      TextField(decoration: InputDecoration( 
        icon: const Icon(Icons.person),  
              hintText: 'Enter your password',  
              labelText: 'password', ),
      onChanged: (value){
        setState(() {
          _email=value;
        });
      },
      ),
      TextButton(onPressed: (){}, child: Text("Signin"))
      ]),
    );
  }
}