import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:auctioneersdiary/widgets/secondary_page_header.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
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
                screenTitle: "Privacy Policy",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
