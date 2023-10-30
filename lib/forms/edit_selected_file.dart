import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:auctioneersdiary/widgets/large_size_button.dart';
import 'package:auctioneersdiary/widgets/sample_input_field.dart';
import 'package:auctioneersdiary/widgets/secondary_page_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UpdateClientFile extends StatefulWidget {
  const UpdateClientFile({super.key});

  @override
  State<UpdateClientFile> createState() => _UpdateClientFileState();
}

class _UpdateClientFileState extends State<UpdateClientFile> {
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
                screenTitle: "Update Client File Details",
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
                      "Basic Details",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    sampleInputTextField(
                      fieldLabel: "Landlord Names",
                      fieldHelper: "Enter the full names of the landlord(lady)",
                      fieldIcon: CupertinoIcons.person_alt,
                    ),
                    sampleInputTextField(
                      fieldLabel: "Tenant Names",
                      fieldHelper: "Enter the full names of the tenant(s)",
                      fieldIcon: CupertinoIcons.person_alt,
                    ),
                    sampleInputTextField(
                      fieldLabel: "Instructing Party",
                      fieldHelper:
                          "Enter the organizational names of the instructing firm",
                      fieldIcon: CupertinoIcons.building_2_fill,
                    ),
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
                    const Text(
                      "Premises Location",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    sampleInputTextField(
                      fieldLabel: "Premises Location",
                      fieldHelper:
                          "Enter the full address of the premises concerned",
                      fieldIcon: CupertinoIcons.house_alt,
                    ),
                    sampleInputTextField(
                      fieldLabel: "Location Pin Link",
                      fieldHelper:
                          "Paste a link to the map location of the premises",
                      fieldIcon: CupertinoIcons.map_pin_ellipse,
                    ),
                    largeSizeUploadButton(
                      buttonPurpose: "Update Client File Details",
                      context: context,
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
