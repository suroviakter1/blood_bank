import 'dart:async';

import 'package:flutter/material.dart';

import 'login_page.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
   double percent = 0.0;
  int timeInSeconds = 3;
@override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        if (timeInSeconds < 1) {
          timer.cancel();
          // Navigate to the login page when the timer is up
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LogInPage()),
          );
        } else {
          timeInSeconds = timeInSeconds - 1;
          percent = (timeInSeconds / 10).toDouble();
        }
      });
    });
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3xi83KuFSyqx7m3e5OLmrfJfwwpYxQp5K1w&usqp=CAU'),
             SizedBox(height:50,),
          CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}