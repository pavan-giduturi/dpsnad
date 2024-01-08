import 'dart:async';
import 'package:dpsnad/layouts/home/homepage.dart';
import 'package:dpsnad/layouts/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      _changeOpacity();
    });
    _navigateToHome();
  }



  void _navigateToHome() {
    Timer(const Duration(seconds: 3), () => Get.offAll(()=>const Home()));
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Constants.singinBgColor,
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: AnimatedOpacity(
                opacity: opacityLevel,
                duration: const Duration(seconds: 3),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 1,
                  padding: const EdgeInsets.all(50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Image.asset(
                        Constants.splashImage,
                      ),
                      SizedBox(height: Constants.defaultPadding,),
                      Image.asset(
                        Constants.logoImage,
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    ));
  }
}
