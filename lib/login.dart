import 'package:flutter/material.dart';
class login extends StatefulWidget{
  @override
  _loginState createState()=> _loginState();
}

class _loginState extends State<login> {
  @override
  late String _email;
  late String password;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column (mainAxisAlignment: MainAxisAlignment.center,
      children: [TextField(decoration: InputDecoration( 
        icon: const Icon(Icons.person),  
              hintText: 'Enter your password',  
              labelText: 'Email', ),
      onChanged: (value){
        setState(() {
          _email=value;
        });
      },
      ),
      TextField(decoration: InputDecoration( icon: const Icon(Icons.person),  
              hintText: 'Enter your password',  
              labelText: 'password', ),
      onChanged: (value){
        setState(() {
          password=value;
        });
      },
      obscureText: true,
      ),
         TextButton(onPressed: (){}, child: Text("signin")),
         TextButton(onPressed: (){Navigator.pushNamed(context, "/signin");
         }, 
         child: Text("signup")),
      ]
      )
    );
  }
}