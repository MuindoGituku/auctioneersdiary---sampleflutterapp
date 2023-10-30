import 'package:auctioneersdiary/forms/add_recurrent_file.dart';
import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ClientFileHistory extends StatefulWidget {
  const ClientFileHistory({super.key});

  @override
  State<ClientFileHistory> createState() => _ClientFileHistoryState();
}

class _ClientFileHistoryState extends State<ClientFileHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 5 + 58),
        children: [
          singleFileHistory(
            context: context,
            runPeriod: "22nd Apr 2023 - 30th May 2023",
            arrearsAmount: "KShs. 450,760",
          ),
          singleFileHistory(
            context: context,
            runPeriod: "The month of July 2023",
            arrearsAmount: "KShs. 300,250",
          ),
          singleFileHistory(
            context: context,
            runPeriod: "30th Sep 2023 - 18th Dec 2023",
            arrearsAmount: "KShs. 300,250",
          ),
        ],
      ),
      bottomSheet: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) {
                return const NewRecurrentFile();
              },
            ),
          );
        },
        child: Container(
          height: 58,
          decoration:
              BoxDecoration(color: AppColors().mainBlueColor, boxShadow: const [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 15,
              color: Colors.black38,
            )
          ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/add_folder_filled.svg",
                color: Colors.white,
              ),
              const SizedBox(width: 13),
              const Text(
                "Add Recurrent Client File",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleFileHistory({
    required BuildContext context,
    required String runPeriod,
    required String arrearsAmount,
  }) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/folder.png",
            height: 40,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: ScreenDimension().screenWidth(context) * .72,
                child: Text(
                  runPeriod,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
              ),
              SizedBox(
                width: ScreenDimension().screenWidth(context) * .72,
                child: Text(
                  arrearsAmount,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    height: 1.5,
                  ),
                ),
              ),
              SizedBox(
                width: ScreenDimension().screenWidth(context) * .72,
                child: const Text(
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution.",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
