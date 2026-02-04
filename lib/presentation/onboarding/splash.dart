import 'package:flutter/material.dart';
import 'get_started.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState(){
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Image.asset("assets/images/Loading.png"),
        ),
    );
  }
  Future <void > redirect() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GetStarted()),
    );
  }


}
