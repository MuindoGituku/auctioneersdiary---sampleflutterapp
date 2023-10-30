import 'package:auctioneersdiary/screens/client_file_details.dart';
import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFiles extends StatefulWidget {
  const SearchFiles({super.key});

  @override
  State<SearchFiles> createState() => _SearchFilesState();
}

class _SearchFilesState extends State<SearchFiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ScreenDimension().defaultScreenPadding(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Search Files",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: ScreenDimension().screenWidth(context) * .7,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
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
                              prefixIcon: const Icon(CupertinoIcons.search),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: "Search for client files...",
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
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Search",
                            style: TextStyle(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Recently Viewed",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: double.maxFinite,
                      height: 100,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        children: [
                          singleRecentFile(
                            tenantNames: "Brainson Mwove",
                            lastUpdateDate: "25/04/2023",
                          ),
                          singleRecentFile(
                            tenantNames: "Edmondton Dundas",
                            lastUpdateDate: "27/04/2023",
                          ),
                          singleRecentFile(
                            tenantNames: "Calvin Klein",
                            lastUpdateDate: "02/02/2023",
                          ),
                          singleRecentFile(
                            tenantNames: "Indian Ocean Construction Limited",
                            lastUpdateDate: "25/04/2023",
                          ),
                          singleRecentFile(
                            tenantNames: "Brainson Mwove",
                            lastUpdateDate: "25/04/2023",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Search Results",
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
                        singleSearchResult(
                          context: context,
                          tenantNames: "Trojan Mechatronics LTD",
                          premisesLocation: "Umoja Estate G-11 Hse No. B3",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames: "Brainson Mwove",
                          premisesLocation: "Patayya Suites D12",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames: "Edmondton Dundas",
                          premisesLocation: "Sunnyside Loresho A3",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames: "Clavin Klein",
                          premisesLocation: "Westlands B4",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames:
                              "Indian Ocean Moving and Logistics Limited",
                          premisesLocation: "Roysambu Flats No. 11",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames: "Margaret Waithira Mwaura",
                          premisesLocation:
                              "Enterprise Road, Godown No. 12 & 13",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames: "Dennis Danieolo Brianna",
                          premisesLocation: "Westlands No. 16",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames: "Lucciana Versace Rosa",
                          premisesLocation: "Ngara D8",
                        ),
                        singleSearchResult(
                          context: context,
                          tenantNames: "Mary Muiruri",
                          premisesLocation: "Kahawa West Room 27",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget singleSearchResult({
    required BuildContext context,
    required String tenantNames,
    required String premisesLocation,
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
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/folder.png",
              width: ScreenDimension().screenWidth(context) * .12,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: ScreenDimension().screenWidth(context) * .75,
                  child: Text(
                    tenantNames,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      height: 1.5,
                    ),
                  ),
                ),
                SizedBox(
                  width: ScreenDimension().screenWidth(context) * .74,
                  child: Text(
                    premisesLocation,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      height: 1.4,
                    ),
                  ),
                ),
                SizedBox(
                  width: ScreenDimension().screenWidth(context) * .74,
                  child: const Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution.",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      height: 2,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget singleRecentFile({
    required String tenantNames,
    required String lastUpdateDate,
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
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
        width: ScreenDimension().screenWidth(context) * .3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/folder.png",
              height: 50,
              fit: BoxFit.cover,
            ),
            Text(
              tenantNames,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 11,
                height: 1.5,
                fontFamily: "Poppins",
              ),
            ),
            Text(
              "Last updated on $lastUpdateDate",
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 8,
                height: 1.5,
                fontFamily: "Poppins",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
