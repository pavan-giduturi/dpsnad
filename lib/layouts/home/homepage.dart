import 'package:dpsnad/layouts/widgets/constants.dart';
import 'package:dpsnad/layouts/widgets/responsive.dart';
import 'package:flutter/material.dart';
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
        // backgroundColor: Constants.lightgrey,
        appBar: AppBar(
          title: const Text("Welcome to school"),
          titleTextStyle: TextStyle(
              color: Constants.dpsColor,
              fontSize: Constants.headerSize,
              fontWeight: FontWeight.bold),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      child: Image.asset(
                        Constants.logoImage,
                        height: 300,
                        width: 300,
                      ),
                    ),
                  ),
                ],
              ),
              // Container(
              //   height: MediaQuery.of(context).size.height * 1,
              //   color: Colors.black45,
              // ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        const url = 'https://dpsnad.web2visual.com/site/userLogin';
                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrl(
                            Uri.parse(url),
                            mode: LaunchMode.inAppWebView,
                          );
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: Constants.registrationTextFieldHeight,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Constants.dpsColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        child: Text(
                          'Student / Parent',
                          style: TextStyle(
                              color: Constants.buttonTextColor,
                              fontSize: Constants.loginBtnTextSize),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        const url = 'https://dpsnad.web2visual.com/site/login';
                        if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(
                        Uri.parse(url),
                        mode: LaunchMode.inAppWebView,
                        );
                        } else {
                        throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: Constants.registrationTextFieldHeight,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Constants.dpsColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        child: Text(
                          'Administration',
                          style: TextStyle(
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
