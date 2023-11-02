import 'package:auctioneersdiary/forms/edit_selected_file.dart';
import 'package:auctioneersdiary/screens/client_file_docs.dart';
import 'package:auctioneersdiary/screens/client_file_history.dart';
import 'package:auctioneersdiary/screens/client_file_remarks.dart';
import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ClientFileDetails extends StatefulWidget {
  const ClientFileDetails({super.key});

  @override
  State<ClientFileDetails> createState() => _ClientFileDetailsState();
}

class _ClientFileDetailsState extends State<ClientFileDetails>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: ScreenDimension()
                .defaultScreenPadding(context)
                .copyWith(bottom: 0),
            child: fileDetailsHeader(context),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: Text(
              "SE/D/893746/2023",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                letterSpacing: 0.3,
                fontSize: 20,
                height: 1.5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: basicFileDetailsTable(),
          ),
          Expanded(
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ],
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              child: Column(
                children: [
                  TabBar(
                    dividerColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: AppColors().mainBlueColor,
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 10,
                          color: Colors.black38,
                        ),
                      ],
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor:
                        const Color.fromARGB(255, 130, 135, 143),
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      letterSpacing: 1,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Color.fromARGB(255, 116, 115, 115),
                          offset: Offset(0, 4),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      letterSpacing: 1,
                      color: Color.fromARGB(255, 130, 135, 143),
                    ),
                    controller: _tabController,
                    tabs: [
                      Tab(
                        text: "Docs".toUpperCase(),
                      ),
                      Tab(
                        text: "Progress".toUpperCase(),
                      ),
                      Tab(
                        text: "History".toUpperCase(),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      height: double.maxFinite,
                      child: TabBarView(
                        controller: _tabController,
                        children: const [
                          ClientFileDocuments(),
                          ClientFileRemarks(),
                          ClientFileHistory(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget basicFileDetailsTable() {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(color: Colors.transparent),
      columnWidths: const {
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
      },
      children: const [
        TableRow(
          children: [
            Text(
              "Landlord Names:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
                fontSize: 11,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: Text(
                "Margaret Waithira Mwaura",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Text(
              "Tenant Names:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
                fontSize: 11,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: Text(
                "Eliud Kipchoge",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Text(
              "Instructing Party:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
                fontSize: 11,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: Text(
                "Masterways Real Estate Limited",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Text(
              "Arrears Amount:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
                fontSize: 11,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: Text(
                "KShs. 236,750",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Text(
              "Premises Location:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
                fontSize: 11,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: Text(
                "Umoja Estate Phase IV Hse No. 3B",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget fileDetailsHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        Row(
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: const Text(
                        "Client File Charges",
                        textAlign: TextAlign.left,
                      ),
                      content: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 6),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Arrears Amount",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                  color: Color.fromARGB(255, 130, 135, 143),
                                ),
                              ),
                              SizedBox(height: 6),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "KShs.",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "236,750",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: "poppins",
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Auctioneers Charges (Standard)",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                  color: Color.fromARGB(255, 130, 135, 143),
                                ),
                              ),
                              SizedBox(height: 6),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "KShs.",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "18,750",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: "poppins",
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Advocates Fee (If Applicable)",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                  color: Color.fromARGB(255, 130, 135, 143),
                                ),
                              ),
                              SizedBox(height: 6),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "KShs.",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "23,675",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: "poppins",
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      actions: [
                        CupertinoActionSheetAction(
                          isDefaultAction: true,
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text(
                            "Done",
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                ),
                child: SvgPicture.asset(
                  "assets/icons/calculator_filled.svg",
                  width: 25,
                  height: 25,
                  fit: BoxFit.cover,
                  color: AppColors().mainBlueColor,
                ),
              ),
            ),
            const SizedBox(width: 25),
            PopupMenuButton(
              color: Theme.of(context).scaffoldBackgroundColor,
              surfaceTintColor: Colors.transparent,
              icon: SvgPicture.asset(
                "assets/icons/menu_burger.svg",
                width: 25,
                height: 25,
                fit: BoxFit.cover,
                color: AppColors().mainBlueColor,
              ),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) {
                            return const UpdateClientFile();
                          },
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/file_edit_outline.svg",
                          width: 15,
                          height: 15,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          "Update File Details",
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () {
                      CoolAlert.show(
                        context: context,
                        type: CoolAlertType.loading,
                        text: "Mapping directions to premises...",
                        autoCloseDuration: Duration(seconds: 2),
                      );
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/map_marker_home_outline.svg",
                          width: 15,
                          height: 15,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          "Directions to Premises",
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () {
                      CoolAlert.show(
                        context: context,
                        type: CoolAlertType.info,
                        barrierDismissible: false,
                        title: "Close file...",
                        text:
                            "No more changes can be made after the file is closed!",
                        widget: TextFormField(),
                        confirmBtnColor: AppColors().mainBlueColor,
                        confirmBtnText: "Close File",
                        showCancelBtn: true,
                        cancelBtnText: "Cancel",
                        confirmBtnTextStyle: TextStyle(
                          fontFamily: "Poppins",
                          height: 1.5,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        cancelBtnTextStyle: TextStyle(
                          fontFamily: "Poppins",
                          color: AppColors().mainBlueColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          height: 1.5,
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/lock_outline.svg",
                          width: 15,
                          height: 15,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          "Mark File as Closed",
                        ),
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    child: PopupMenuDivider(),
                  ),
                  PopupMenuItem(
                    onTap: () {
                      CoolAlert.show(
                        context: context,
                        type: CoolAlertType.loading,
                        text: "Share client file...",
                        autoCloseDuration: Duration(seconds: 2),
                      );
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/share_outline.svg",
                          width: 15,
                          height: 15,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          "Share With Colleagues",
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () {
                      CoolAlert.show(
                        context: context,
                        type: CoolAlertType.loading,
                        text: "Downloading documents...",
                        autoCloseDuration: Duration(seconds: 2),
                      );
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/folder_download_outline.svg",
                          width: 15,
                          height: 15,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          "Download Client File",
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () {
                      CoolAlert.show(
                        context: context,
                        type: CoolAlertType.error,
                        barrierDismissible: false,
                        title: "Are you sure?",
                        text:
                            "You are about to delete this client file from the firm database!",
                        confirmBtnColor: AppColors().mainBlueColor,
                        confirmBtnText: "Keep It",
                        showCancelBtn: true,
                        cancelBtnText: "Delete",
                        confirmBtnTextStyle: TextStyle(
                          fontFamily: "Poppins",
                          height: 1.5,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        cancelBtnTextStyle: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.red,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          height: 1.5,
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/delete_document_outline.svg",
                          width: 15,
                          height: 15,
                          fit: BoxFit.cover,
                          color: Colors.redAccent,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          "Delete Client File",
                          style: TextStyle(
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ];
              },
            ),
          ],
        ),
      ],
    );
  }
}
