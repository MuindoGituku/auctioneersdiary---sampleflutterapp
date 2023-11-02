import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:auctioneersdiary/widgets/large_size_button.dart';
import 'package:auctioneersdiary/widgets/sample_input_field.dart';
import 'package:auctioneersdiary/widgets/secondary_page_header.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateFileDocument extends StatefulWidget {
  const UpdateFileDocument({super.key});

  @override
  State<UpdateFileDocument> createState() => _UpdateFileDocumentState();
}

class _UpdateFileDocumentState extends State<UpdateFileDocument> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ScreenDimension().defaultScreenPadding(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: secondaryScreenHeader(
                context: context,
                screenTitle: "Update File Document",
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
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Document Details",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    sampleInputTextField(
                      fieldLabel: "Document Type",
                      fieldHelper:
                          "Select the type of document you are uploading",
                      fieldIcon: CupertinoIcons.doc,
                    ),
                    sampleInputTextField(
                      fieldLabel: "Document Date",
                      fieldHelper:
                          "Tap to set the date when the doocument was prepared",
                      fieldIcon: CupertinoIcons.calendar,
                    ),
                    sampleInputTextField(
                      fieldLabel: "Uploading Staff",
                      fieldHelper:
                          "Recorded full names of the staff member uploading the document",
                      fieldIcon: CupertinoIcons.person_alt,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Browse Document",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: ScreenDimension().screenWidth(context),
                      height: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(149, 206, 205, 205),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Text(
                          "Tap to upload documents...",
                          style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    largeSizeUploadButton(
                      buttonPurpose: "Update Document In File",
                      context: context,
                      onTapLargeButton: () async {
                        await CoolAlert.show(
                          context: context,
                          barrierDismissible: false,
                          type: CoolAlertType.loading,
                          text: "Updating document in client file...",
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
}
