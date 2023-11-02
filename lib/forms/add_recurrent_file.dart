import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:auctioneersdiary/widgets/large_size_button.dart';
import 'package:auctioneersdiary/widgets/sample_input_field.dart';
import 'package:auctioneersdiary/widgets/secondary_page_header.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewRecurrentFile extends StatefulWidget {
  const NewRecurrentFile({super.key});

  @override
  State<NewRecurrentFile> createState() => _NewRecurrentFileState();
}

class _NewRecurrentFileState extends State<NewRecurrentFile> {
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
                screenTitle: "Add Recurrent Client File",
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                      child: Text(
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Recurrent File Details",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    singleNewFileDetails(context),
                    const SizedBox(height: 10),
                    const Text(
                      "Arrears Amount",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    sampleInputTextField(
                      fieldLabel: "Amount Owed",
                      fieldHelper: "Enter the total arrears owed by the tenant",
                      fieldIcon: CupertinoIcons.money_dollar,
                    ),
                    const SizedBox(height: 10),
                    largeSizeUploadButton(
                      buttonPurpose: "Upload New Recurrent File",
                      context: context,
                      onTapLargeButton: () async {
                        await CoolAlert.show(
                          context: context,
                          barrierDismissible: false,
                          type: CoolAlertType.loading,
                          text: "Uploading new recurrent client file...",
                          autoCloseDuration: Duration(seconds: 5),
                        );

                        Navigator.of(context).pop();
                      },
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

  Widget singleNewFileDetails(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(187, 255, 255, 255),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Table(
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
                "Client File ID:",
                maxLines: 1,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                  fontSize: 10,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                child: Text(
                  "SE/D/893746/2023",
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: "Poppins",
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              Text(
                "Landlord Names:",
                maxLines: 1,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                  fontSize: 10,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                child: Text(
                  "Margaret Waithira Mwaura",
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: "Poppins",
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              Text(
                "Tenant Names:",
                maxLines: 1,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                  fontSize: 10,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                child: Text(
                  "Eliud Kipchoge",
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: "Poppins",
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              Text(
                "Instructing Party:",
                maxLines: 1,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                  fontSize: 10,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                child: Text(
                  "Masterways Real Estate Limited",
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: "Poppins",
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              Text(
                "Premises Location:",
                maxLines: 1,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                  fontSize: 10,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                child: Text(
                  "Umoja Estate Phase IV Hse No. 3B",
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: "Poppins",
                    fontSize: 11,
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
