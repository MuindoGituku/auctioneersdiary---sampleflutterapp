import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget largeSizeUploadButton({
  required String buttonPurpose,
  required BuildContext context,
  void Function()? onTapLargeButton,
}) {
  return Column(
    children: [
      const SizedBox(height: 10),
      GestureDetector(
        //onTap: () => onTapLargeButton ?? Navigator.of(context).pop(),
        onTap: () => Navigator.of(context).pop(),
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors().mainBlueColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/cloud_upload_filled.svg",
                width: 20,
                height: 20,
                color: Colors.white,
              ),
              const SizedBox(width: 15),
              Text(
                buttonPurpose,
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      const SizedBox(height: 20),
    ],
  );
}
