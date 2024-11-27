import 'package:flutter/material.dart';
import 'package:yelp/core/constants/style/color_constant/color_palette.dart';
import 'package:yelp/core/constants/style/text_style/font_style.dart';

/// **********************************************************************
///
///
///
/// Overline small:
///
///
///
/// **********************************************************************/

CustomFontStyle customFontStyle = CustomFontStyle();

/// **********************************************************************
///
/// FontWeight.w600,
///
/// **********************************************************************/

TextStyle commonOverlineSmallFont600Grey300 = customFontStyle.overLineSmall(
  fontWeight: FontWeight.w600,
  color: neutralGreyColor[300],
);
