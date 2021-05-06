import 'package:flutter/material.dart';
import 'package:untitled/sizes/size.dart';
import 'package:untitled/style/appcolors.dart';
import 'onBoarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then(
      (value) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => OnBoardingPage(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: mainColor,
        height: hieght(context),
        width: width(context),
        child: Center(
            child: Container(
                width: width(context) * 0.35,
                height: hieght(context) * 0.3,
                child: Image.asset(
                  'asstes/search.png',
                  fit: BoxFit.fill,
                ))),
      ),
    );
  }
}
