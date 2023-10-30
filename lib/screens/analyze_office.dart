import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:flutter/material.dart';

class OfficeAnalysis extends StatefulWidget {
  const OfficeAnalysis({super.key});

  @override
  State<OfficeAnalysis> createState() => _OfficeAnalysisState();
}

class _OfficeAnalysisState extends State<OfficeAnalysis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ScreenDimension().defaultScreenPadding(context),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Office Calendar",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            // Expanded(
            //   child: SizedBox(
            //     height: double.maxFinite,
            //     width: double.infinity,
            //     child: TableCalendar(
            //       shouldFillViewport: true,
            //       availableCalendarFormats: const {
            //         CalendarFormat.month: "Month View",
            //       },
            //       focusedDay: DateTime.now(),
            //       firstDay: DateTime(2023),
            //       lastDay: DateTime.now(),
            //       calendarStyle: CalendarStyle(
            //         //tableBorder: TableBorder.all(),
            //         weekendTextStyle: TextStyle(
            //           color: AppColors().mainBlueColor,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       headerStyle: HeaderStyle(
            //         leftChevronPadding: EdgeInsets.fromLTRB(0, 12, 12, 12),
            //         rightChevronPadding: EdgeInsets.fromLTRB(12, 12, 0, 12),
            //       ),
            //       daysOfWeekStyle: DaysOfWeekStyle(
            //         weekdayStyle: TextStyle(
            //           fontWeight: FontWeight.bold,
            //         ),
            //         weekendStyle: TextStyle(
            //           color: AppColors().mainBlueColor,
            //         ),
            //       ),
            //       eventLoader: (day) {
            //         return _getEventsForDate(day);
            //       },
            //       onDaySelected: (selectedDay, focusedDay) {
            //         Navigator.push(
            //           context,
            //           CupertinoPageRoute(
            //             builder: (context) {
            //               return DailyActivityTracker(
            //                 selectedDay: selectedDay,
            //               );
            //             },
            //           ),
            //         );
            //       },
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

List _getEventsForDate(DateTime day) {
  return [];
}
