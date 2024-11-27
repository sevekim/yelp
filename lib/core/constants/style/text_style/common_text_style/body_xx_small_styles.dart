import 'package:flutter/material.dart';
import 'package:yelp/core/constants/style/color_constant/color_palette.dart';
import 'package:yelp/core/constants/style/text_style/font_style.dart';

/// **********************************************************************
///
///
///
/// bodyXSmall:
///
///
///
/// **********************************************************************/

CustomFontStyle customFontStyle = CustomFontStyle();

/// **********************************************************************
///
/// FontWeight.w400 : Grey
///
/// **********************************************************************/

TextStyle commonBodyXXSmallFont400Grey500 = customFontStyle.bodyXXSmall(
  fontWeight: FontWeight.w400,
  color: neutralGreyColor[500],
);

/// **********************************************************************
///
/// FontWeight.w500 : Grey
///
/// **********************************************************************/

TextStyle commonBodyXXSmallFont500Grey500 = customFontStyle.bodyXXSmall(
  fontWeight: FontWeight.w500,
  color: neutralGreyColor[500],
);

TextStyle commonBodyXXSmallFont500Grey1000 = customFontStyle.bodyXXSmall(
  fontWeight: FontWeight.w500,
  color: neutralGreyColor[1000],
);

/// **********************************************************************
///
/// FontWeight.w500,: Blue
///
/// **********************************************************************/

TextStyle commonBodyXXSmallFont500Blue500 = customFontStyle.bodyXXSmall(
  fontWeight: FontWeight.w500,
  color: primaryBlueColor[600],
);
