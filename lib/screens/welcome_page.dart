import 'package:auctioneersdiary/screens/login_page.dart';
import 'package:auctioneersdiary/screens/root_navigation.dart';
import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/welcome_screen.png',
            fit: BoxFit.cover,
            height: ScreenDimension().screenHeight(context),
            width: ScreenDimension().screenWidth(context),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .31,
            child: const SizedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Let's Get\nStarted",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 45,
                    height: 1.25,
                    color: Color.fromARGB(216, 237, 236, 236),
                    letterSpacing: 2,
                    shadows: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0, 1),
                        blurRadius: 2,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .23,
            child: SizedBox(
              width: ScreenDimension().screenWidth(context),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Get access to company files and track the file progress all on the go, securely.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    height: 1.5,
                    color: Color.fromARGB(216, 237, 236, 236),
                    letterSpacing: 1.5,
                    shadows: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0, 1),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .13,
            child: GestureDetector(
              onTap: () async {
                await CoolAlert.show(
                  context: context,
                  barrierDismissible: false,
                  type: CoolAlertType.loading,
                  text: "Fetching client files from database...",
                  autoCloseDuration: Duration(seconds: 5),
                );

                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return const AppNavigation();
                    },
                  ),
                );
              },
              child: SizedBox(
                width: ScreenDimension().screenWidth(context),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(216, 237, 236, 236),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          offset: Offset(0, 1),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: const Text(
                      "Open Dashboard",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        height: 1.5,
                        color: Colors.blueAccent,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .05,
            child: SizedBox(
              width: ScreenDimension().screenWidth(context),
              child: Align(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    text: "Not Muindo? ",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 217, 217, 217),
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: "Switch Account",
                        style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w900,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) {
                                  return const StaffLoginScreen();
                                },
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
