import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ClientFileRemarks extends StatefulWidget {
  const ClientFileRemarks({super.key});

  @override
  State<ClientFileRemarks> createState() => _ClientFileRemarksState();
}

class _ClientFileRemarksState extends State<ClientFileRemarks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 5 + 65),
        children: [
          clientFileRemarkTimeline(
            isFirst: true,
            isLast: false,
            uploadedBy: "Joseph Morgan",
            dateUploaded: "24-04-2023",
            timePosted: "10:27 am",
            remarkContent:
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution.",
          ),
          clientFileRemarkTimeline(
            isFirst: false,
            isLast: false,
            uploadedBy: "Mary Muiruri",
            dateUploaded: "24-04-2023",
            timePosted: "10:27 am",
            remarkContent:
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
          ),
          clientFileRemarkTimeline(
            isFirst: false,
            isLast: false,
            uploadedBy: "James McRoe",
            dateUploaded: "24-04-2023",
            timePosted: "10:27 am",
            remarkContent:
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution.",
          ),
          clientFileRemarkTimeline(
            isFirst: false,
            isLast: false,
            uploadedBy: "Danielo Ndambui",
            dateUploaded: "24-04-2023",
            timePosted: "10:27 am",
            remarkContent:
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
          ),
          clientFileRemarkTimeline(
            isFirst: false,
            isLast: false,
            uploadedBy: "Morris Mutemi",
            dateUploaded: "24-04-2023",
            timePosted: "10:27 am",
            remarkContent:
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution.",
          ),
          clientFileRemarkTimeline(
            isFirst: false,
            isLast: true,
            uploadedBy: "Joseph Morgan",
            dateUploaded: "24-04-2023",
            timePosted: "10:27 am",
            remarkContent:
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
          ),
        ],
      ),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: ScreenDimension().screenWidth(context) * .75,
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  expands: true,
                  textCapitalization: TextCapitalization.sentences,
                  textInputAction: TextInputAction.done,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    letterSpacing: 1.0,
                    height: 1.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  showCursor: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white70,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Share an update...",
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      letterSpacing: 1.0,
                      height: 1.0,
                      color: Color.fromARGB(255, 147, 149, 152),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  CoolAlert.show(
                    context: context,
                    barrierDismissible: false,
                    type: CoolAlertType.loading,
                    text: "Uploading new progress remark...",
                    autoCloseDuration: Duration(seconds: 5),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors().mainBlueColor,
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/paper_plane_filled.svg",
                    width: 25,
                    height: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget clientFileRemarkTimeline({
    required bool isFirst,
    required bool isLast,
    required String uploadedBy,
    required String dateUploaded,
    required String timePosted,
    required String remarkContent,
  }) {
    return TimelineTile(
      isFirst: true,
      indicatorStyle: IndicatorStyle(
        indicator: SvgPicture.asset(
          "assets/icons/comment_outline.svg",
          width: 15,
          height: 15,
          color: const Color.fromARGB(255, 147, 149, 152),
        ),
        width: 15,
        height: 15,
        indicatorXY: 0,
        drawGap: true,
      ),
      endChild: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              uploadedBy,
              style: const TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            Text(
              "Update posted on $dateUploaded at $timePosted",
              style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 11,
                  color: Color.fromARGB(250, 147, 149, 152)),
            ),
            const SizedBox(height: 10),
            Text(
              remarkContent,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
