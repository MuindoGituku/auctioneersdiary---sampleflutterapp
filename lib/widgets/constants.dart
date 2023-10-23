import 'package:flutter/material.dart';

class ScreenDimension {
  double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
}

class AppColors {
  Color mainBlueColor = const Color.fromARGB(255, 83, 158, 243);
}
