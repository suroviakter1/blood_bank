import 'package:flutter/material.dart';

import 'home_view.dart';

class FormView extends StatelessWidget {
  const FormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar( backgroundColor: Colors.red,
      title: Text('Fill the form for new'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
               ),labelText: 'Are you a foundation or Donor?')),),
        Padding(padding: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
               ),labelText: 'Full name')),),
               Padding(padding: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
               ),labelText: 'Location')),),
        Padding(padding: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
               ),labelText: 'Blood group')),),
        Padding(padding: EdgeInsets.all(20),
             child: ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(
                builder: (context) =>HomePage(),) );},
              child: Text('Submit'),
             style: ElevatedButton.styleFrom(backgroundColor: Colors.red,
             foregroundColor: Colors.black),),
        ),],
      ),
    );
  }
}