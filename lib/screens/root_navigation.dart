//import 'package:auctioneersdiary/screens/analyze_office.dart';
import 'package:auctioneersdiary/screens/app_settings.dart';
import 'package:auctioneersdiary/screens/landing_screen.dart';
import 'package:auctioneersdiary/screens/search_files.dart';
import 'package:auctioneersdiary/screens/updates_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class AppNavigation extends StatefulWidget {
  const AppNavigation({super.key});

  @override
  State<AppNavigation> createState() => _AppNavigationState();
}

class _AppNavigationState extends State<AppNavigation> {
  int currentIndex = 0;
  List<Widget> appBaseScreens = [
    const HomeLanding(),
    const SearchFiles(),
    //const OfficeAnalysis(),
    const UpdatesNotification(),
    const AppSettings(),
  ];

  BottomBarItem createBottomBarItem(
    String svgLocation,
    String selectedSvgLocation,
    String itemTitle,
  ) {
    return BottomBarItem(
      icon: SvgPicture.asset(
        svgLocation,
        width: 22,
        height: 22,
        color: const Color.fromARGB(255, 147, 149, 152),
      ),
      selectedIcon: SvgPicture.asset(
        selectedSvgLocation,
        width: 22,
        height: 22,
        color: const Color.fromARGB(255, 83, 158, 243),
      ),
      title: Padding(
        padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
        child: Text(
          itemTitle,
          style: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 12,
          ),
        ),
      ),
      unSelectedColor: const Color.fromARGB(255, 147, 149, 152),
      selectedColor: const Color.fromARGB(255, 83, 158, 243),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appBaseScreens[currentIndex],
      bottomNavigationBar: StylishBottomBar(
        currentIndex: currentIndex,
        onTap: (value) => setState(() => currentIndex = value),
        items: [
          createBottomBarItem(
            "assets/icons/home_outline.svg",
            "assets/icons/home_filled.svg",
            "Home",
          ),
          createBottomBarItem(
            "assets/icons/search_files_outline.svg",
            "assets/icons/search_files_filled.svg",
            "Search",
          ),
          // createBottomBarItem(
          //   "assets/icons/calendar_outline.svg",
          //   "assets/icons/calendar_filled.svg",
          //   "Analyse",
          // ),
          createBottomBarItem(
            "assets/icons/bell_outline.svg",
            "assets/icons/bell_filled.svg",
            "History",
          ),
          createBottomBarItem(
            "assets/icons/apps_outline.svg",
            "assets/icons/apps_filled.svg",
            "More",
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        option: AnimatedBarOptions(
          iconSize: 22,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.Default,
        ),
      ),
    );
  }
}
