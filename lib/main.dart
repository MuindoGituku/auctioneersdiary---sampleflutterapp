import 'package:auctioneersdiary/screens/welcome_page.dart';
import 'package:auctioneersdiary/widgets/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auctioneers Diary',
      theme: ThemeData(
        primaryColor: AppColors().mainBlueColor,
        scaffoldBackgroundColor: const Color.fromARGB(255, 237, 236, 236),
        fontFamily: "OpenSansRegular",
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors().mainBlueColor,
        ),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
