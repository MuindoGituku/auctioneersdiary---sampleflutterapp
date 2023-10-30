import 'package:auctioneersdiary/settings/about_the_app.dart';
import 'package:auctioneersdiary/settings/app_accessibility_settings.dart';
import 'package:auctioneersdiary/settings/calculator_config.dart';
import 'package:auctioneersdiary/settings/charges_calculator.dart';
import 'package:auctioneersdiary/settings/document_templates.dart';
import 'package:auctioneersdiary/settings/general_settings.dart';
import 'package:auctioneersdiary/settings/notification_settings.dart';
import 'package:auctioneersdiary/settings/office_activity_stats.dart';
import 'package:auctioneersdiary/settings/privacy_policy.dart';
import 'package:auctioneersdiary/settings/staff_profile_page.dart';
import 'package:auctioneersdiary/settings/terms_of_service.dart';
import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ScreenDimension().defaultScreenPadding(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "More",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 22,
                fontWeight: FontWeight.w900,
                height: 1.5,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return const StaffProfilePage();
                            },
                          ),
                        );
                      },
                      child: staffProfileContainer(context),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Office Tools",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return const ChargesCalculator();
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/calculator_filled.svg",
                                  width: 22,
                                  height: 22,
                                  color: AppColors().mainBlueColor,
                                ),
                                const SizedBox(width: 20),
                                const Text(
                                  "Charges Calculator",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/angle_right.svg",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return const OfficeActivityStats();
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/chart_simple_filled.svg",
                                  width: 22,
                                  height: 22,
                                  color: AppColors().mainBlueColor,
                                ),
                                const SizedBox(width: 20),
                                const Text(
                                  "Office Activity Stats",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/angle_right.svg",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return const DocumentTemplates();
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/template.svg",
                                  width: 22,
                                  height: 22,
                                  color: AppColors().mainBlueColor,
                                ),
                                const SizedBox(width: 20),
                                const Text(
                                  "Document Templates",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/angle_right.svg",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Settings",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return const GeneralSettings();
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/settings_general.svg",
                                  width: 22,
                                  height: 22,
                                  color: AppColors().mainBlueColor,
                                ),
                                const SizedBox(width: 20),
                                const Text(
                                  "General",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/angle_right.svg",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return const NotificationSettings();
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/bell_filled.svg",
                                  width: 22,
                                  height: 22,
                                  color: AppColors().mainBlueColor,
                                ),
                                const SizedBox(width: 20),
                                const Text(
                                  "Notifications",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/angle_right.svg",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return const AppAccessSettings();
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/universal_access.svg",
                                  width: 22,
                                  height: 22,
                                  color: AppColors().mainBlueColor,
                                ),
                                const SizedBox(width: 20),
                                const Text(
                                  "App Accessibility",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/angle_right.svg",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return const CalculatorConfiguration();
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/calculator_simple.svg",
                                  width: 22,
                                  height: 22,
                                  color: AppColors().mainBlueColor,
                                ),
                                const SizedBox(width: 20),
                                const Text(
                                  "Calculator Configuration",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/angle_right.svg",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Other",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return const AboutTheApp();
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/info.svg",
                                  width: 22,
                                  height: 22,
                                  color: AppColors().mainBlueColor,
                                ),
                                const SizedBox(width: 20),
                                const Text(
                                  "About",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/angle_right.svg",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return const TermsOfService();
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/signature.svg",
                                  width: 22,
                                  height: 22,
                                  color: AppColors().mainBlueColor,
                                ),
                                const SizedBox(width: 20),
                                const Text(
                                  "Terms of Service",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/angle_right.svg",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return const PrivacyPolicy();
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/user_lock.svg",
                                  width: 22,
                                  height: 22,
                                  color: AppColors().mainBlueColor,
                                ),
                                const SizedBox(width: 20),
                                const Text(
                                  "Privacy Policy",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/angle_right.svg",
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Copyright ©️2023 Pixill Illustration Studios. All Rights Reserved",
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container staffProfileContainer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.hardEdge,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/employee.png",
                width: ScreenDimension().screenWidth(context) * .12,
                height: ScreenDimension().screenHeight(context) * .06,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: ScreenDimension().screenWidth(context) * .65,
                child: const Text(
                  "Nickolas N. Muriithi",
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: "Poppins",
                    fontSize: 18,
                    height: 2,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
              const SizedBox(height: 7),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/phone_outline.svg",
                    width: 15,
                    height: 15,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: ScreenDimension().screenWidth(context) * .57,
                    child: const Text(
                      "+1 (437)661 - 2182",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/email_outline.svg",
                    width: 15,
                    height: 15,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: ScreenDimension().screenWidth(context) * .57,
                    child: const Text(
                      "muriithi@employmentplus.org",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/dice_outline.svg",
                    width: 15,
                    height: 15,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: ScreenDimension().screenWidth(context) * .57,
                    child: const Text(
                      "Lead IT Supervisor",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/id_outline.svg",
                    width: 15,
                    height: 15,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: ScreenDimension().screenWidth(context) * .57,
                    child: const Text(
                      "897-6745-887",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
            ],
          ),
        ],
      ),
    );
  }
}
