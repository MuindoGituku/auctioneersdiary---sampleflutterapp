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
        padding: EdgeInsets.fromLTRB(
          15,
          MediaQuery.of(context).padding.top,
          15,
          MediaQuery.of(context).padding.bottom,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Search Files",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [],
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
}
