import 'package:book_app/services/constants/colors.dart';
import 'package:flutter/material.dart';

abstract class CustomFonts {
  static const playFairDisplay = 'PlayFairDisplay';

  static TextStyle playFairDisplayTextsStyle(
      double fontSize, FontWeight fontWeight) {
    return TextStyle(
      fontFamily: CustomFonts.playFairDisplay,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: CustomColors.black,
    );
  }

  static const inter = 'Inter';

  static TextStyle centerWidgetItemsTextStyle(
      [FontWeight fontWeight = FontWeight.w500, double fontSize = 12]) {
    return TextStyle(
        fontFamily: CustomFonts.inter,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: CustomColors.black,
        height: 1.3);
  }
}
