import 'package:dpsnad/layouts/inappwebview/inappwebview.dart';
import 'package:dpsnad/layouts/widgets/constants.dart';
import 'package:dpsnad/layouts/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: const HomePage(),
      desktop: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  child: const HomePage(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to DPS-NAD"),
          titleTextStyle: TextStyle(
              color: Constants.dpsColor,
              fontSize: Constants.headerSize,
              fontWeight: FontWeight.bold),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Constants.bgImage), fit: BoxFit.fill)),
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1,
                color: Colors.black54,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1,
                  ),
                  margin: const EdgeInsets.all(20),
                  child: Image.asset(
                    Constants.logoImage1,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.62,
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        String headerTitle =
                            "Welcome to DPS-NAD Student / Parent Portal";
                        const url =
                            'https://portal.dpsnad.org.in/site/userLogin';
                        Get.to(() => const InAppWebViewHome(), arguments: [
                          url.toString(),
                          headerTitle.toString()
                        ]);
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: Constants.registrationTextFieldHeight,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Constants.dpsColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            border: Border.all(color: Colors.orange, width: 2)),
                        child: Text(
                          'Student / Parent',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                              color: Constants.buttonTextColor,
                              fontSize: Constants.loginBtnTextSize),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        String headerTitle =
                            "Welcome to DPS-NAD Administration Portal";
                        const url = 'https://portal.dpsnad.org.in/site/login';
                        Get.to(() => const InAppWebViewHome(), arguments: [
                          url.toString(),
                          headerTitle.toString()
                        ]);
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: Constants.registrationTextFieldHeight,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Constants.dpsColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            border: Border.all(color: Colors.orange, width: 2)),
                        child: Text(
                          'Administration',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                              color: Constants.buttonTextColor,
                              fontSize: Constants.loginBtnTextSize),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
        /* Column(
        children: [
          Container(

          )
          // Center(
          //   child: Container(
          //     margin: const EdgeInsets.all(20),
          //     child: Image.asset(
          //       Constants.logoImage,
          //       height: 300,
          //       width: 300,
          //     ),
          //   ),
          // ),
          // Center(
          //   child: GestureDetector(
          //     onTap: () {},
          //     child: Container(
          //       margin: const EdgeInsets.all(20),
          //       width: MediaQuery.of(context).size.width * 0.8,
          //       height: Constants.registrationTextFieldHeight,
          //       alignment: Alignment.center,
          //       decoration: BoxDecoration(
          //           color: Constants.dpsColor,
          //           borderRadius: const BorderRadius.all(Radius.circular(30))),
          //       child: Text(
          //         'Student/Parent',
          //         style: TextStyle(
          //             color: Constants.buttonTextColor,
          //             fontSize: Constants.loginBtnTextSize),
          //       ),
          //     ),
          //   ),
          // ),
          // Center(
          //   child: GestureDetector(
          //     onTap: () {},
          //     child: Container(
          //       margin: const EdgeInsets.all(20),
          //       width: MediaQuery.of(context).size.width * 0.8,
          //       height: Constants.registrationTextFieldHeight,
          //       alignment: Alignment.center,
          //       decoration: BoxDecoration(
          //           color: Constants.dpsColor,
          //           borderRadius: const BorderRadius.all(Radius.circular(30))),
          //       child: Text(
          //         'Administration',
          //         style: TextStyle(
          //             color: Constants.buttonTextColor,
          //             fontSize: Constants.loginBtnTextSize),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      )*/
        );
  }
}
