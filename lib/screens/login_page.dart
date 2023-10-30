import 'package:auctioneersdiary/screens/root_navigation.dart';
import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class StaffLoginScreen extends StatefulWidget {
  const StaffLoginScreen({super.key});

  @override
  State<StaffLoginScreen> createState() => _StaffLoginScreenState();
}

class _StaffLoginScreenState extends State<StaffLoginScreen> {
  bool rememberMeCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 2,
            ),
            const Text(
              "Hi, Welcome Back! 👋",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 21,
                letterSpacing: 1,
                height: 1.5,
              ),
            ),
            const Text(
              "Hello again, you've been missed!",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                letterSpacing: 0.5,
                height: 1.5,
                color: Color.fromARGB(255, 147, 149, 152),
              ),
            ),
            const Spacer(),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email Address",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      letterSpacing: 1.0,
                      height: 1.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    showCursor: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_rounded),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 147, 149, 152),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "myname@example.com",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        letterSpacing: 1.0,
                        height: 1.0,
                        color: Color.fromARGB(255, 147, 149, 152),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Staff Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      letterSpacing: 1.0,
                      height: 1.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    showCursor: true,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_rounded),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 147, 149, 152),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "***********",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        letterSpacing: 1.0,
                        height: 1.0,
                        color: Color.fromARGB(255, 147, 149, 152),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: rememberMeCheck,
                            visualDensity: VisualDensity.compact,
                            onChanged: (bool? value) {
                              setState(() {
                                rememberMeCheck = !rememberMeCheck;
                              });
                            },
                          ),
                          const Text(
                            "Remember Me",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          letterSpacing: 0.2,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () async {
                await CoolAlert.show(
                  context: context,
                  barrierDismissible: false,
                  type: CoolAlertType.loading,
                  text: "Authenticating staff credentials...",
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
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 83, 158, 243),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      height: 1.5,
                      color: Color.fromARGB(255, 255, 255, 255),
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("OR"),
                ),
                Expanded(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: ScreenDimension().screenWidth(context),
              child: Align(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    text: "Don't have an account yet? ",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 147, 149, 152),
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        text: "Take a tour",
                        style: const TextStyle(
                          color: Color.fromARGB(255, 83, 158, 243),
                          fontWeight: FontWeight.w900,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
