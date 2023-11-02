import 'package:auctioneersdiary/forms/add_new_document.dart';
import 'package:auctioneersdiary/forms/edit_selected_document.dart';
import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ClientFileDocuments extends StatefulWidget {
  const ClientFileDocuments({super.key});

  @override
  State<ClientFileDocuments> createState() => _ClientFileDocumentsState();
}

class _ClientFileDocumentsState extends State<ClientFileDocuments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 5 + 58),
        children: [
          singleFileDocument(
            context: context,
            docContType: "assets/images/pdf_file.png",
            docType: "Instructions Letter",
            uploadDate: "29-05-2024",
            uploadedBy: "Joseph Morgan",
          ),
          singleFileDocument(
            context: context,
            docContType: "assets/images/png_file.png",
            docType: "Distress Notice",
            uploadDate: "29-05-2024",
            uploadedBy: "Moses Mwathi",
          ),
          singleFileDocument(
            context: context,
            docContType: "assets/images/doc_file.png",
            docType: "Instructions Correspondence Letter",
            uploadDate: "29-05-2024",
            uploadedBy: "Joseph Morgan",
          ),
          singleFileDocument(
            context: context,
            docContType: "assets/images/pdf_file.png",
            docType: "Tenant Proposal",
            uploadDate: "12-06-2024",
            uploadedBy: "Stephen Gituku Munene",
          ),
          singleFileDocument(
            context: context,
            docContType: "assets/images/jpg_file.png",
            docType: "Removal Form",
            uploadDate: "17-06-2024",
            uploadedBy: "Martin Munene",
          ),
        ],
      ),
      bottomSheet: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) {
                return const NewFileDocument();
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
                "assets/icons/add_doc_filled.svg",
                color: Colors.white,
              ),
              const SizedBox(width: 13),
              const Text(
                "Upload New Document",
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

  Widget singleFileDocument({
    required BuildContext context,
    required String docType,
    required docContType,
    required String uploadDate,
    required String uploadedBy,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 10),
      decoration: const BoxDecoration(
        color: Colors.transparent,
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.black45,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            docContType,
            height: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: ScreenDimension().screenWidth(context) * .62,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: ScreenDimension().screenWidth(context) * .62,
                  child: Text(
                    docType,
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 13,
                      letterSpacing: .5,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: 1),
                SizedBox(
                  width: ScreenDimension().screenWidth(context) * .62,
                  child: Text(
                    "Uploaded on $uploadDate by $uploadedBy",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 11,
                      letterSpacing: .3,
                    ),
                  ),
                ),
                const SizedBox(height: 7),
                SizedBox(
                  width: ScreenDimension().screenWidth(context) * .62,
                  child: const Text(
                    "Tap to view the document...",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 11,
                      letterSpacing: .2,
                      color: Color.fromARGB(255, 147, 149, 152),
                    ),
                  ),
                ),
              ],
            ),
          ),
          PopupMenuButton(
            color: Theme.of(context).scaffoldBackgroundColor,
            surfaceTintColor: Colors.transparent,
            icon: SvgPicture.asset(
              "assets/icons/menu_dots_vertical.svg",
              width: 20,
              height: 20,
              fit: BoxFit.cover,
              color: Colors.black,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () {
                    CoolAlert.show(
                      context: context,
                      type: CoolAlertType.success,
                      barrierDismissible: false,
                      title: "Success...",
                      text: "You have downloaded and opened the file document!",
                      confirmBtnColor: AppColors().mainBlueColor,
                      confirmBtnText: "Done Viewing",
                      confirmBtnTextStyle: TextStyle(
                        fontFamily: "Poppins",
                        height: 1.5,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/envelope_open_text_outline.svg",
                        width: 15,
                        height: 15,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Open",
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) {
                          return const UpdateFileDocument();
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
                        "Update",
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
                          "You are about to delete a document from this file!",
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
                        "Delete",
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
    );
  }
}
