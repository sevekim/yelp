import 'package:flutter/material.dart';
import 'package:yelp/core/constants/style/color_constant/color_palette.dart';
import 'package:yelp/core/constants/style/text_style/font_style.dart';

/// **********************************************************************
///
///
///
/// Heading H5:
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

TextStyle commonHeadingH5Font700Grey900 = customFontStyle.headingH5Style(
  fontWeight: FontWeight.w700,
  color: neutralGreyColor[900],
);
