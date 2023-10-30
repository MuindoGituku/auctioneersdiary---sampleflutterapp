import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:auctioneersdiary/widgets/secondary_page_header.dart';
import 'package:flutter/material.dart';

class OfficeActivityStats extends StatefulWidget {
  const OfficeActivityStats({super.key});

  @override
  State<OfficeActivityStats> createState() => _OfficeActivityStatsState();
}

class _OfficeActivityStatsState extends State<OfficeActivityStats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ScreenDimension().defaultScreenPadding(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: secondaryScreenHeader(
                context: context,
                screenTitle: "Office Activity Stats",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
