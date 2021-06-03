import 'package:flutter/material.dart';

Widget text(
  String textString, {
  double size,
  Color color,
  FontWeight fontWeight,
}) {
  return Text(
    textString,
    style: TextStyle(
      fontSize: size,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}
