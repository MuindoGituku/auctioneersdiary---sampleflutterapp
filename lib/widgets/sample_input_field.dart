import 'package:flutter/material.dart';

Widget sampleInputTextField({
  required String fieldLabel,
  required String fieldHelper,
  required IconData fieldIcon,
}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    child: TextFormField(
      style: const TextStyle(
        height: 1,
        fontSize: 13,
      ),
      decoration: InputDecoration(
        labelText: fieldLabel,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: const TextStyle(
          height: 1,
          fontSize: 12,
        ),
        floatingLabelStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
        hintStyle: const TextStyle(
          height: 1,
          fontSize: 12,
        ),
        helperText: fieldHelper,
        helperMaxLines: 2,
        helperStyle: const TextStyle(
          height: 1.3,
          fontSize: 10,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1,
          ),
          gapPadding: 5,
        ),
        prefixIcon: Icon(
          fieldIcon,
          size: 15,
        ),
      ),
    ),
  );
}
