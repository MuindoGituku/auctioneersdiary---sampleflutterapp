import 'package:flutter/material.dart';

class OfficeAnalysis extends StatefulWidget {
  const OfficeAnalysis({super.key});

  @override
  State<OfficeAnalysis> createState() => _OfficeAnalysisState();
}

class _OfficeAnalysisState extends State<OfficeAnalysis> {
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
          children: [
            const Text(
              "Office Calendar",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
