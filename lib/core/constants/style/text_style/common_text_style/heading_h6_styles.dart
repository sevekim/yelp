import 'package:flutter/material.dart';
import 'package:yelp/core/constants/style/color_constant/color_palette.dart';
import 'package:yelp/core/constants/style/text_style/font_style.dart';

/// **********************************************************************
///
///
///
/// Heading H7:
///
///
///
/// **********************************************************************/

CustomFontStyle customFontStyle = CustomFontStyle();

/// **********************************************************************
///
/// FontWeight.w700,
///
/// **********************************************************************/

TextStyle commonHeadingH6Font700Grey900 = customFontStyle.headingH6Style(
  fontWeight: FontWeight.w700,
  color: neutralGreyColor[900],
);
