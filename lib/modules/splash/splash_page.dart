import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {

  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((value) => Navigator.pushReplacementNamed(context,'/login'));
    return Scaffold(
      body: Center(
        child: Text('Splash Page'),
      ),
    );
  }
}
