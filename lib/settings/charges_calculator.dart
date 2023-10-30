import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:auctioneersdiary/widgets/secondary_page_header.dart';
import 'package:flutter/material.dart';

class ChargesCalculator extends StatefulWidget {
  const ChargesCalculator({super.key});

  @override
  State<ChargesCalculator> createState() => _ChargesCalculatorState();
}

class _ChargesCalculatorState extends State<ChargesCalculator> {
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
                screenTitle: "Charges Calculator",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
