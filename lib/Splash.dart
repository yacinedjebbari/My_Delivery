import 'package:flutter/material.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState()
  {
    super.initState();
    _navigatetohome();
  }
  _navigatetohome() async
  {
    await Future.delayed(Duration(milliseconds: 4000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Scrol()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
              child:
              Container(
                color: Colors.green,
                child: Image.asset('Images/splash.png',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
    ),
              ),

      ),
    );
  }
}
