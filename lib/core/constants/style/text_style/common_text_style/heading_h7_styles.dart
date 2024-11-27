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
/// FontWeight.w500,
///
/// **********************************************************************/

TextStyle commonHeadingH7Font500Grey900 = customFontStyle.headingH7Style(
  fontWeight: FontWeight.w500,
  color: neutralGreyColor[900],
);

/// **********************************************************************
///
/// FontWeight.w600,
///
/// **********************************************************************/

TextStyle commonHeadingH7Font600Grey900 = customFontStyle.headingH7Style(
  fontWeight: FontWeight.w600,
  color: neutralGreyColor[900],
);

/// **********************************************************************
///
/// FontWeight.w700,
///
/// **********************************************************************/

TextStyle commonHeadingH7Font700Grey900 = customFontStyle.headingH7Style(
  fontWeight: FontWeight.w700,
  color: neutralGreyColor[900],
);
