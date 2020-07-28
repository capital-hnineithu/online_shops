import 'package:flutter/material.dart';

class TextStyles {
  TextStyles._();

  static final TextStyle appNameTextStyle = TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w800,
      color: Colors.white.withOpacity(0.7),
      fontFamily: 'Ubuntu');

  static final TextStyle tagLineTextStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontFamily: 'Ubuntu');

  static final TextStyle subscriptionTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontFamily: 'Ubuntu',
  );
}
