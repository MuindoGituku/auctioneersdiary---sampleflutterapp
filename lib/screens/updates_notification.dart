import 'package:auctioneersdiary/screens/client_file_details.dart';
import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UpdatesNotification extends StatefulWidget {
  const UpdatesNotification({super.key});

  @override
  State<UpdatesNotification> createState() => _UpdatesNotificationState();
}

class _UpdatesNotificationState extends State<UpdatesNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ScreenDimension().defaultScreenPadding(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Notifications",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 22,
                fontWeight: FontWeight.w900,
                height: 1.5,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    const Text(
                      "Today",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      children: [
                        singleNotificationWidget(
                          stateIcon: "assets/icons/comment_outline.svg",
                          instructingParty: "Tysonns Limited",
                          tenantNames: "Moses Kuria",
                        ),
                        singleNotificationWidget(
                          stateIcon: "assets/icons/comment_outline.svg",
                          instructingParty: "Masterways Real Estate",
                          tenantNames: "Esther Njeri",
                        ),
                        singleNotificationWidget(
                          stateIcon: "assets/icons/add_doc_outline.svg",
                          instructingParty: "Greenplots Properties Limited",
                          tenantNames: "Moses Kuria",
                        ),
                        singleNotificationWidget(
                          stateIcon: "assets/icons/add_doc_outline.svg",
                          instructingParty: "Stephen Gituku",
                          tenantNames: "Kimanthi",
                        ),
                        singleNotificationWidget(
                          stateIcon: "assets/icons/comment_outline.svg",
                          instructingParty: "Wachira Maina & Co. Advocates",
                          tenantNames: "Indian Ocean Moving Logistics",
                        ),
                        singleNotificationWidget(
                          stateIcon: "assets/icons/add_folder_outline.svg",
                          instructingParty: "Tysonns Limited",
                          tenantNames: "Moses Kuria",
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Earlier",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 15),
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      children: [
                        singleNotificationWidget(
                          stateIcon: "assets/icons/comment_outline.svg",
                          instructingParty: "Tysonns Limited",
                          tenantNames: "Moses Kuria",
                        ),
                        singleNotificationWidget(
                          stateIcon: "assets/icons/comment_outline.svg",
                          instructingParty: "Masterways Real Estate",
                          tenantNames: "Esther Njeri",
                        ),
                        singleNotificationWidget(
                          stateIcon: "assets/icons/add_doc_outline.svg",
                          instructingParty: "Greenplots Properties Limited",
                          tenantNames: "Moses Kuria",
                        ),
                        singleNotificationWidget(
                          stateIcon: "assets/icons/add_doc_outline.svg",
                          instructingParty: "Stephen Gituku",
                          tenantNames: "Kimanthi",
                        ),
                        singleNotificationWidget(
                          stateIcon: "assets/icons/comment_outline.svg",
                          instructingParty: "Tysonns Limited",
                          tenantNames: "Indian Ocean Moving Logistics",
                        ),
                        singleNotificationWidget(
                          stateIcon: "assets/icons/add_folder_outline.svg",
                          instructingParty: "Tysonns Limited",
                          tenantNames: "Edmond Mutesa",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget singleNotificationWidget({
    required String stateIcon,
    required String instructingParty,
    required String tenantNames,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) {
              return const ClientFileDetails();
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 8),
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    "assets/images/folder.png",
                    height: 36,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: -5,
                    right: -4,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.redAccent,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            offset: Offset(0, 4),
                            color: Colors.black45,
                          ),
                        ],
                      ),
                      child: SvgPicture.asset(
                        stateIcon,
                        width: 12,
                        height: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: ScreenDimension().screenWidth(context) * .75,
                    child: Text(
                      "$instructingParty VS $tenantNames",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  SizedBox(
                    width: ScreenDimension().screenWidth(context) * .75,
                    child: const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla venenatis condimentum risus, in luctus ligula. Nunc vel lacus nunc. Donec pellentesque tellus id libero dictum venenatis. Quisque egestas eros sit amet lobortis interdum. Nullam mattis ultricies mauris a dictum. Mauris nisi lectus, eleifend sed nisl at, consequat ultrices neque.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
