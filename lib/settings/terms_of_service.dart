import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:auctioneersdiary/widgets/secondary_page_header.dart';
import 'package:flutter/material.dart';

class TermsOfService extends StatefulWidget {
  const TermsOfService({super.key});

  @override
  State<TermsOfService> createState() => _TermsOfServiceState();
}

class _TermsOfServiceState extends State<TermsOfService> {
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
                screenTitle: "Terms Of Service",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
