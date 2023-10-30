import 'package:auctioneersdiary/forms/add_new_file.dart';
import 'package:auctioneersdiary/screens/client_file_details.dart';
import 'package:auctioneersdiary/settings/staff_profile_page.dart';
import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeLanding extends StatefulWidget {
  const HomeLanding({super.key});

  @override
  State<HomeLanding> createState() => _HomeLandingState();
}

class _HomeLandingState extends State<HomeLanding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ScreenDimension().defaultScreenPadding(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            landingScreenHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    const Text(
                      "Quick Stats",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
                      width: double.maxFinite,
                      height: 110,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(187, 255, 255, 255),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          singleAnalysisItem(
                            context: context,
                            tallyDesc: "New Clients",
                            numberCount: "8",
                            artLocation: "assets/icons/add_folder_filled.svg",
                          ),
                          singleAnalysisItem(
                            context: context,
                            tallyDesc: "Running Files",
                            numberCount: "27",
                            artLocation: "assets/icons/chart_simple_filled.svg",
                          ),
                          singleAnalysisItem(
                            context: context,
                            tallyDesc: "In Storage",
                            numberCount: "16",
                            artLocation: "assets/icons/garage_outline.svg",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Newly Added Files",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    CarouselSlider(
                      items: [
                        singleNewFileDetails(context),
                      ],
                      options: CarouselOptions(
                        viewportFraction: 1,
                        height: 150,
                        enlargeFactor: 0.6,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 10),
                        enlargeCenterPage: true,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Recently Updated Files",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      children: [
                        singleSearchResult(
                          context: context,
                          tenantNames: "Trojan Mechatronics LTD",
                          premisesLocation: "Umoja Estate G-11 Hse No. B3",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames: "Brainson Mwove",
                          premisesLocation: "Patayya Suites D12",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames: "Edmondton Dundas",
                          premisesLocation: "Sunnyside Loresho A3",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames: "Clavin Klein",
                          premisesLocation: "Westlands B4",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames:
                              "Indian Ocean Moving and Logistics Limited",
                          premisesLocation: "Roysambu Flats No. 11",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames: "Margaret Waithira Mwaura",
                          premisesLocation:
                              "Enterprise Road, Godown No. 12 & 13",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames: "Dennis Danieolo Brianna",
                          premisesLocation: "Westlands No. 16",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames: "Lucciana Versace Rosa",
                          premisesLocation: "Ngara D8",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames: "Mary Muiruri",
                          premisesLocation: "Kahawa West Room 27",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget singleSearchResult({
    required BuildContext context,
    required String tenantNames,
    required String premisesLocation,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) {
              return const ClientFileDetails();
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/folder.png",
              width: ScreenDimension().screenWidth(context) * .12,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: ScreenDimension().screenWidth(context) * .75,
                  child: Text(
                    tenantNames,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      height: 1.5,
                    ),
                  ),
                ),
                SizedBox(
                  width: ScreenDimension().screenWidth(context) * .74,
                  child: Text(
                    premisesLocation,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      height: 1.4,
                    ),
                  ),
                ),
                SizedBox(
                  width: ScreenDimension().screenWidth(context) * .74,
                  child: const Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution.",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      height: 2,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget singleNewFileDetails(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) {
              return const ClientFileDetails();
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(187, 255, 255, 255),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: TableBorder.all(color: Colors.transparent),
          columnWidths: const {
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(),
          },
          children: const [
            TableRow(
              children: [
                Text(
                  "Landlord Names:",
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    fontSize: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                  child: Text(
                    "Margaret Waithira Mwaura",
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: "Poppins",
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                Text(
                  "Tenant Names:",
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    fontSize: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                  child: Text(
                    "Eliud Kipchoge",
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: "Poppins",
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                Text(
                  "Instructing Party:",
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    fontSize: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                  child: Text(
                    "Masterways Real Estate Limited",
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: "Poppins",
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                Text(
                  "Arrears Amount:",
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    fontSize: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                  child: Text(
                    "KShs. 236,750",
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: "Poppins",
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                Text(
                  "Premises Location:",
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    fontSize: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                  child: Text(
                    "Umoja Estate Phase IV Hse No. 3B",
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: "Poppins",
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget singleAnalysisItem({
    required BuildContext context,
    required String numberCount,
    required String tallyDesc,
    required String artLocation,
  }) {
    return Card(
      color: const Color.fromARGB(255, 64, 156, 255),
      surfaceTintColor: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: ScreenDimension().screenWidth(context) * .2,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    numberCount,
                    style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 3,
                        height: 1.5,
                        color: Colors.white),
                  ),
                  Text(
                    tallyDesc,
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 241, 241, 241),
                    ),
                  ),
                ],
              ),
              Positioned(
                right: -5,
                top: -5,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(),
                  child: SvgPicture.asset(
                    artLocation,
                    color: Colors.white.withOpacity(0.3),
                    theme: const SvgTheme(
                      currentColor: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget landingScreenHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 3),
            Text(
              "Good afternoon!",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 12,
                fontWeight: FontWeight.bold,
                height: 1.5,
                color: Color.fromARGB(255, 147, 149, 152),
              ),
            ),
            SizedBox(height: 3),
            Text(
              "Nickolas Muriithi",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18,
                fontWeight: FontWeight.w900,
                height: 1.5,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return const NewClientFile();
                    },
                  ),
                );
              },
              child: Container(
                width: 37,
                height: 37,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  "assets/icons/add_folder_filled.svg",
                  width: 30,
                  height: 30,
                  color: AppColors().mainBlueColor,
                ),
              ),
            ),
            const SizedBox(width: 20),
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
              child: Container(
                width: 37,
                height: 37,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "assets/images/employee.png",
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
