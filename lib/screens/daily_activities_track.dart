import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class DailyActivityTracker extends StatefulWidget {
  const DailyActivityTracker({super.key, required this.selectedDay});

  final DateTime selectedDay;

  @override
  State<DailyActivityTracker> createState() => _DailyActivityTrackerState();
}

class _DailyActivityTrackerState extends State<DailyActivityTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          paddedPopNavigationHeader(context),
        ],
      ),
    );
  }

  Padding paddedPopNavigationHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        15,
        MediaQuery.of(context).padding.top,
        15,
        MediaQuery.of(context).padding.bottom,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: SvgPicture.asset(
              "assets/icons/back_circle_filled.svg",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
              color: AppColors().mainBlueColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              DateFormat.yMMMEd().format(widget.selectedDay),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                letterSpacing: 0.3,
                fontSize: 20,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
