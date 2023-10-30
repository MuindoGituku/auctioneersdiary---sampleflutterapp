import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget secondaryScreenHeader({
  required BuildContext context,
  required String screenTitle,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
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
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Text(
          screenTitle,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins",
            letterSpacing: 0.1,
            fontSize: 16,
            height: 1.5,
          ),
        ),
      ),
    ],
  );
}
