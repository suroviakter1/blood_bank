import 'package:flutter/material.dart';

import 'home_view.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 50)
    );
    return Scaffold(
       backgroundColor: Colors.grey,
      body: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ Padding(padding: EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.person),
              labelText: 'Username'),
          ),),
            Padding(padding: EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.mail),
              labelText: 'Email'),
          ),),
           Padding(padding: EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.location_city_rounded),
              labelText: 'City'),
          ),),
           Padding(padding: EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.add),
              labelText: 'Foundation'),
          ),),
                Padding(padding: EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(fillColor: Color(0),
              border: OutlineInputBorder(),
              icon: Icon(Icons.password),
              labelText: 'Password'),),),
              
          Padding(padding: EdgeInsets.all(20),
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>HomePage(),) );
            },
            
            child: Text('Log In'),style:buttonStyle,),),
    
          ]
    ),);

  }
}